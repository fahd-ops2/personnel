const nums = document.querySelectorAll(".num");
const speed =100;

nums.forEach(num=>{
    const updateCount=()=>{
        const target =+num.getAttribute('data-target');
        const count =+num.innerText;

        const inc =target/speed;
  
        if(count<target){
            num.innerText=Math.ceil(count+inc);
            setTimeout(updateCount,50);
        }else{
            count.innerText=target;
        }
      
    }
    updateCount();
    window.addEventListener('scroll',()=>{
       const scrolled =window.scrollY;
       if(scrolled>=100){
           
       }
       console.log(scrolled);
    })
   
})