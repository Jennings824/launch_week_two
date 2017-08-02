let ready = () => {
  // your code, here
  return new Promise((resolve, reject) => {
    if (document.readyState == "loading") {
      resolve();
    }
    else {
      reject();
    }
  });
}
