
    async function load() {
      const model = await tf.loadLayersModel('model.json');

    return model;
  };

  function predict(model) {
    // first we get the value in the input field
      const userInput = document.getElementById('CardImage').value
    const inputTensor = tf.tensor(userInput);  // then convert to tensor

    // now lets make the prediction, we use .then because the model is a promise
    // (this is confusing as a Python user, but useful so check it out if interested)
    model.then(model => {
        let result = model.predict(inputTensor);
      result = result.round().dataSync()[0];  // round prediction and get value
      alert(result ? "odd" : "even");
    });
  };

  const model = load();  // load model immediately to avoid delay when user clicks 'Predict'
