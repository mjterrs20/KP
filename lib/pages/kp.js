'use strict';

const functions = require('firebase-functions');
const admin = require('firebase-admin');
const { WebhookClient } = require('dialogflow-fulfillment');
// const {Card, Suggestion} = require('dialogflow-fulfillment');

process.env.DEBUG = 'dialogflow:debug'; // enables lib debugging statements
admin.initializeApp({
    credential: admin.credential.applicationDefault()
});
const db = admin.firestore();
exports.dialogflowFirebaseFulfillment = functions.https.onRequest((request, response) => {
    const agent = new WebhookClient({ request, response });

    //function writeToDb (agent) {
    // Get parameter from Dialogflow with the string to add to the database
    //const databaseEntry = agent.parameters.databaseEntry;

    // Get the database collection 'dialogflow' and document 'agent' and store
    // the document  {entry: "<value of database entry>"} in the 'agent' document
    //const dialogflowAgentRef = db.collection('contentislamis').doc('4MfcPMhytPSPVrnDvzqq');
    //return db.runTransaction(t => {
    //  t.set(dialogflowAgentRef, {entry: databaseEntry});
    //  return Promise.resolve('Write complete');
    //}).then(doc => {
    //  agent.add(`Wrote "${databaseEntry}" to the Firestore database.`);
    //}).catch(err => {
    //  console.log(`Error writing to Firestore: ${err}`);
    //  agent.add(`Failed to write "${databaseEntry}" to the Firestore database.`);
    //});
    //}

    function readFromDb(agent) {
        // Get the database collection 'dialogflow' and document 'agent'
        const topik = agent.parameters.jawab;

        // var citiesRef = db.collection('contentislamis');
        //var dialogflowAgentDoc = citiesRef.where('judul', '==', 'Raudah');
        const dialogflowAgentDoc = db.collection('products').where('name', 'array-contains', topik);

        return dialogflowAgentDoc.get()
            .then(snapshot => {
                if (snapshot.size === 0) {
                    //agent.add("Maaf saya tidak mengerti");
                } else {
                    snapshot.forEach(doc => {
                        if (!doc.exists) {
                            agent.add('No data found in the database!');
                        } else {
                            //agent.add(doc.data().entry);
                            const data = doc.data();

                            //agent.add(`${data.arab} <br><br> ${data.terjemahan}`);
                            agent.add(`${data.description}`);


                            //agent.add(`${agent.parameters['Penjelasan_dan_Definisi']}`);
                        }
                        return Promise.resolve('Read complete');
                    });
                }
            })
            .catch(err => {
                console.log('Error getting documents', err);
                agent.add('Maaf,');
            });

    }

    // Map from Dialogflow intent names to functions to be run when the intent is matched
    let intentMap = new Map();
    intentMap.set('jawab', readFromDb);
    //intentMap.set('WriteToFirestore', writeToDb);
    agent.handleRequest(intentMap);
});