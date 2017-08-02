
  fetch('http://localhost:4567/books.json')
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
            error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.text())
    .then(body => {
      console.log(body);
      let bodyParsed = JSON.parse(body);
      console.log(bodyParsed);
      let datas = document.getElementByID("books");
      bodyParsed("books").forEach((book) => {
        datas.innerHTML += `<li>${book.name}</li>`;
      });
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
