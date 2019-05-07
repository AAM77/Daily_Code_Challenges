function printerError(s) {

    const printerColors = ['a','b','c','d','e','f','g','h','i','j','k','l','m']
    const letters = s.split('');
    let errorCounter = 0;

    letters.forEach( letter => {
      printerColors.includes(letter) ? errorCounter += 0 : errorCounter += 1;
    })

    return `${errorCounter}/${s.length}`
}
