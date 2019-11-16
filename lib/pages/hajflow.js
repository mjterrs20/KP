'use strict';

const functions = require('firebase-functions');
const admin = require('firebase-admin');
const {WebhookClient} = require('dialogflow-fulfillment');

process.env.DEBUG = 'dialogflow:*'; // enables lib debugging statements
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

  function readFromDb (agent) {
    // Get the database collection 'dialogflow' and document 'agent'
    const topik = agent.parameters.Penjelasan_dan_Definisi;
    
    // var citiesRef = db.collection('contentislamis');
	//var dialogflowAgentDoc = citiesRef.where('judul', '==', 'Raudah');
    const dialogflowAgentDoc = db.collection('knowledgechatbot').where('tags','array-contains',topik);
    
    return dialogflowAgentDoc.get()
      .then(snapshot => {
      		if(snapshot.size === 0){
                //agent.add("Maaf saya tidak mengerti");
              const topik2 = agent.parameters.Penjelasan_dan_Definisi;
              const dialogflowAgentDoc2 = db.collection('panduanumroh').where('tags','array-contains',topik2);
              return dialogflowAgentDoc2.get()
                .then(snapshot => {
                      if(snapshot.size === 0){
                          // agent.add("Maaf saya tidak mengerti, bisa ganti dengan pertanyaan lain ? :)");
                 //          const topik3 = agent.parameters.Penjelasan_dan_Definisi;
			              // const dialogflowAgentDoc3 = db.collection('panduanhaji').where('tags','array-contains',topik3);
			              // return dialogflowAgentDoc3.get()
			              //   .then(snapshot => {
			              //         if(snapshot.size === 0){
			              //             // agent.add("Maaf saya tidak mengerti, bisa ganti dengan pertanyaan lain ? :)");
			              //             const topik4 = agent.parameters.Penjelasan_dan_Definisi;
						           //    const dialogflowAgentDoc4 = db.collection('panduanumroh').where('tags','array-contains',topik4);
						           //    return dialogflowAgentDoc4.get()
						           //      .then(snapshot => {
						           //            if(snapshot.size === 0){
						           //                // agent.add("Maaf saya tidak mengerti, bisa ganti dengan pertanyaan lain ? :)");
						           //                const topik5 = agent.parameters.Penjelasan_dan_Definisi;
									        //       const dialogflowAgentDoc5 = db.collection('panduanperjalanan').where('tags','array-contains',topik5);
									        //       return dialogflowAgentDoc5.get()
									        //         .then(snapshot => {
									        //               if(snapshot.size === 0){
									        //                   agent.add("Tahan dulu, Tunggu update dari MarBot selanjutnya !");
									        //               }else
									        //               {
									        //                 snapshot.forEach(doc => {
									        //                   if (!doc.exists) {
									        //                     agent.add('Tidak ada data! Maaf saya tidak mengerti, bisa ganti dengan pertanyaan lain ? :)');
									        //                   } else {
									        //                     //agent.add(doc.data().entry);
									        //                     const data = doc.data();

									                          
									        //                     //agent.add(`${data.judul +" \n \n"+ data.content}`);
									        //                     agent.add(`${data.content}`);


									        //                     //agent.add(`${agent.parameters['Penjelasan_dan_Definisi']}`);
									        //                   }
									        //                   return Promise.resolve('Read complete');
									        //                 });
									        //               }
									        //       })
									        //       .catch(err => {
									        //         console.log('Error getting documents', err);
									        //         agent.add('Maaf saya tidak mengerti, bisa ganti dengan pertanyaan lain ? :)');
									        //       });
						           //            }else
						           //            {
						           //              snapshot.forEach(doc => {
						           //                if (!doc.exists) {
						           //                  agent.add('Tidak ada data! Maaf saya tidak mengerti, bisa ganti dengan pertanyaan lain ? :)');
						           //                } else {
						           //                  //agent.add(doc.data().entry);
						           //                  const data = doc.data();

						                          
						           //                  //agent.add(`${data.judul +" \n \n"+ data.content}`);
						           //                  agent.add(`${data.content}`);


						           //                  //agent.add(`${agent.parameters['Penjelasan_dan_Definisi']}`);
						           //                }
						           //                return Promise.resolve('Read complete');
						           //              });
						           //            }
						           //    })
						           //    .catch(err => {
						           //      console.log('Error getting documents', err);
						           //      agent.add('Maaf saya tidak mengerti, bisa ganti dengan pertanyaan lain ? :)');
						           //    });
			              //         }else
			              //         {
			              //           snapshot.forEach(doc => {
			              //             if (!doc.exists) {
			              //               agent.add('Tidak ada data! Maaf saya tidak mengerti, bisa ganti dengan pertanyaan lain ? :)');
			              //             } else {
			              //               //agent.add(doc.data().entry);
			              //               const data = doc.data();

			                          
			              //               //agent.add(`${data.judul +" \n \n"+ data.content}`);
			              //               agent.add(`${data.content}`);


			              //               //agent.add(`${agent.parameters['Penjelasan_dan_Definisi']}`);
			              //             }
			              //             return Promise.resolve('Read complete');
			              //           });
			              //         }
			              // })
			              // .catch(err => {
			              //   console.log('Error getting documents', err);
			              //   agent.add('Maaf saya tidak mengerti, bisa ganti dengan pertanyaan lain ? :)');
			              // });
                      }else
                      {
                        snapshot.forEach(doc => {
                          if (!doc.exists) {
                            agent.add('Tidak ada data! Maaf saya tidak mengerti, bisa ganti dengan pertanyaan lain ? :)');
                          } else {
                            //agent.add(doc.data().entry);
                            const data = doc.data();

                          
                            //agent.add(`${data.judul +" \n \n"+ data.content}`);
                            agent.add(`${data.content}`);


                            //agent.add(`${agent.parameters['Penjelasan_dan_Definisi']}`);
                          }
                          return Promise.resolve('Read complete');
                        });
                      }
              })
              .catch(err => {
                console.log('Error getting documents', err);
                agent.add('Maaf saya tidak mengerti, bisa ganti dengan pertanyaan lain ? :)');
              });
            }else
            {
              snapshot.forEach(doc => {
                if (!doc.exists) {
                  agent.add('No data found in the database!');
                } else {
                  //agent.add(doc.data().entry);
                  const data = doc.data();

                    //agent.add(`${data.arab} <br><br> ${data.terjemahan}`);
                  agent.add(`${data.judul}<br><br>${data.arab}${data.terjemahan}${data.content}`);


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
  intentMap.set('Penjelasan_dan_Definisi', readFromDb);
  //intentMap.set('WriteToFirestore', writeToDb);
  agent.handleRequest(intentMap);
});