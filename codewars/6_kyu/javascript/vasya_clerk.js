function tickets(peopleInLine){
  register = []
  let answer = 'YES'

  peopleInLine.forEach( (bill) => {
    if(bill === 25) {
      register.push(bill);

    } else if(bill === 50) {

      if(register.includes(25)) {
        register.push(50);
        register.splice(register.indexOf(25), 1);

      } else {
        answer = 'NO';
      }

    } else if(bill === 100) {

        if(register.includes(25) && register.includes(50)) {
          register.push(100);
          register.splice(register.indexOf(25),1);
          register.splice(register.indexOf(50),1);

        } else if (register.filter((bill) => bill === 25).length === 3) {
          register.push(100);
          register.splice(register.indexOf(25),1);
          register.splice(register.indexOf(25),1);
          register.splice(register.indexOf(25),1);

        } else {
          answer = 'NO';
        }
      }
    });

  return answer
}
