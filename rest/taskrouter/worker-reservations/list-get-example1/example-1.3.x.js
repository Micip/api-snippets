// Download the Node helper library from twilio.com/docs/node/install
// These consts are your accountSid and authToken from https://www.twilio.com/console
const accountSid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX';
const authToken = 'your_auth_token';
const workspaceSid = 'WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX';
const workerSid = 'WKXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX';
const client = require('twilio')(accountSid, authToken);

// reject a reservation
client.taskrouter.v1
  .workspaces(workspaceSid)
  .workers(workerSid)
  .reservations
  .list()
  .then((data) => {
    data.reservations.forEach((reservation) => {
        console.log(reservation.reservationStatus);
        console.log(reservation.workerName);
    });
  });
