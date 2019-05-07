function bouncingBall(h,  bounce,  window) {
  if ( (h > 0) && (0 < bounce && bounce < 1) && (window < h) ) {

    let count = 1;
    let bounce_h = h * bounce;

    while (bounce_h > window) {
      count +=2;
      bounce_h = bounce_h*bounce;
    }
    return count;

  } else {
    return -1;
  }
}
