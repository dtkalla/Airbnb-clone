import { useState } from 'react';
import { Link } from 'react-router-dom/cjs/react-router-dom.min';
import Navigation from '../Navigation';
import "./Dropdown.css";


function Dropdown( props ) {
    const [ display, setDisplay ] = useState( 'none' )
    function handleClick() {
        if ( display === 'none' ) {
            setDisplay( 'block' )
        } else {
            setDisplay( 'none' )
        }
    }

    function handleClick2() {
        setDisplay( 'none' )
    }

    return (
        <div>
            <div className='dropdown-button' onClick={handleClick}>
                    <img id='hamburger' src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Hamburger_icon.svg/1024px-Hamburger_icon.svg.png" />
                    <i className="fa-solid fa-user-circle fa-xl" />
                </div>
            <div className='dropdown-menu' onClick={handleClick2} style={{display:display}}>
                <div id="modal2-background" />
                <Navigation />
            </div>

        </div>

    )

}

export { Dropdown }