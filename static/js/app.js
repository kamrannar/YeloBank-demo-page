// used for card purchase page (cp.html)


document.querySelector('.endsubmit').addEventListener('mouseover',function(){
    console.log(this)
    this.classList.remove('btn-warning')
    this.classList.add('btn-dark')
  })

  document.querySelector('.endsubmit').addEventListener('mouseout',function(){
    console.log(this)
    this.classList.remove('btn-dark')
    this.classList.add('btn-warning')
  })




