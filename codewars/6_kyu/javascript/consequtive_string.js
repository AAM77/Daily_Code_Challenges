function longestConsec(strarr, k) {
  let longestStr = ''

  if (k > 0 && k <= strarr.length) {

    strarr.forEach( (word, index) => {
      let ctdWord = strarr.slice(index,index+k).join('')
      if (ctdWord.length > longestStr.length) {
        longestStr = ctdWord
      }
    })
  }

  return longestStr
}
