// import React, { useRef } from 'react'
// import { Link } from 'react-router-dom'

// function Home() {
//     const linkRef = useRef(null)
//     const imgContainerRef = useRef(null)

//     const carouselConfig = [l
//         // {image:window.purina_image,href:"#"}, 
//         {image:window.carousel2_image,href:"#"},
//         {image:window.carousel3_image,href:"#"},
//     ]

//     const currentPage = 0

//     const changePage = direction => {

        
//         let requestedPage = currentPage + direction
//         if (requestedPage >= carouselConfig.length) {
//             requestedPage -= carouselConfig.length
//         }
//         if (requestedPage < 0) {
//             requestedPage += carouselConfig.length
//         }
//         requestedPage %= carouselConfig.length
//         linkRef.to = carouselConfig[requestedPage].href
//         imgContainerRef.current.scrollTo({
//             top: 0,
//             left: requestedPage*imgContainerRef.offsetWidth,
//             behavior: 'smooth'
//           });
//     }


//     return (
//         <div classname='carousel'>
//             <div ref={imgContainerRef} className='carousel-images'>
//                 {carouselConfig.map(obj => (
//                     <img src={obj.image} alt="" />
//                 ))}
//                 {carouselConfig.map(obj => (
//                     <img src={obj.image} alt="" />
//                 ))}
//                 {carouselConfig.map(obj => (
//                     <img src={obj.image} alt="" />
//                 ))}
//             </div>
//             <div className='carousel-main'>
//                 <button className='carousel-btn' onClick={()=>changePage(-1)}>{'<'}</button>
//                 <Link className='link' to='#' ref={linkRef}></Link>
//                 <button className='carousel-btn' onClick={()=>changePage(1)}>{'>'}</button>
//             </div>
//         </div>
//     )
// }

// export default Home