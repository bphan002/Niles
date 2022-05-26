import React, {useState} from 'react'

function Home() {
    const slides = [
        sample_carousel1_image,
        sample_carousel2_image,
        sample_carousel3_image
    ]

    const [currentSlide, setCurrentSlide] = useState(2)


    const prev = () => {
        const index = currentSlide > 0 ? currentSlide -1 : slides.length -1
        setCurrentSlide(index)
    }

    const next = () => {
        const index = currentSlide < slides.length - 1 ? currentSlide + 1 : 0
        setCurrentSlide(index)
    }

    return (
        <div className='container'>
            <div className="carousel">
                <div 
                    className="carousel-inner" 
                    style={{ transform: `translateX(${-currentSlide * 100}%)`}}
                >
                    {slides.map((slide,index) =>(
                        <div key={index} className="carousel-item">
                            <img src={slide} />
                        </div>
                    ))}
                        <img src="" alt="" />
                </div>
            </div>
            <div>
                <button onClick={prev} className='carousel-control left'>{'<'}</button>
                <button onClick={next} className='carousel-control right'>{'>'}</button>            
            </div>
        </div>
        

        // <section aria-label='newest photos'>
        //     <div className='carousel'> 
        //     <button className='carousel-btn prev'>{'<'}</button>         
        //     <button className='carousel-btn next'>{'>'}</button>         
        //         <ul>
        //             <li class='slides' data-active>
        //             </li>
        //             <li class='slides'>

        //             </li>
        //             <li class='slides'>
        //             </li>
        //         </ul>
        //     </div>
    // </section>
    )
}

export default Home