//Attempt 1

function openOrSenior(data){

  const memberList = []

  data.forEach( (ageHandicap) => {
    (ageHandicap[0] >= 55 && ageHandicap[1] > 7) ? memberList.push('Senior') : memberList.push('Open');
  });

  return memberList;
}

//Attempt 2 (refactored)

function openOrSenior(data){
  return data.map( (ageHandicap) => (ageHandicap[0] >= 55 && ageHandicap[1] > 7) ? 'Senior' : 'Open')
}
