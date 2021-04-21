//classifier.js
var model;
var predResult = document.getElementById("result");
async function initialize() {
    model = await tf.loadLayersModel('/js/model.json');
}
async function predict() {
    // action for the submit button
    let image = document.getElementById("image");
    let tensorImg = tf.browser.fromPixels(image).resizeNearestNeighbor([150, 150]).toFloat().expandDims();
    
    prediction = await model.predict(tensorImg).data();

    predResult.innerHTML = "This image most likely belongs to Monster Card with a " + (prediction[0] * 100) + " percent confidence.";
}
initialize();