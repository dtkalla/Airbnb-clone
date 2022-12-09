import { useEffect } from 'react';
import { Link, useParams } from 'react-router-dom';
import { useDispatch, useSelector } from 'react-redux';
import { fetchListing, getListing } from "../../store/listings";
import parking from './parking.png';
import pets from './pets.png';
import wifi from './wifi.png';
import boat from './boat.png';
import checkin from './checkin.png';
import kitchen from './kitchen.png';


const ListingShow = () => {
    const { listingId } = useParams();
    const dispatch = useDispatch();
    const l = useSelector(getListing(listingId))

    useEffect(() => {
        dispatch(fetchListing(listingId))
    }, [listingId])

    if (!l) {
        return null
    }

    return (
        <div>
            <div id='listing-show-page'>
            <div className='show-page-images'>
                <img className="listing-show-image-main" src={l.picturesUrl} alt='' />
                <div className='show-page-small-images'>
                    <img className="listing-show-image-small" src={l.pic1} alt='' />
                    <img className="listing-show-image-small" id='small-2' src={l.pic2} alt='' />
                    <img className="listing-show-image-small" src={l.pic3} alt='' />
                    <img className="listing-show-image-small" id='small-4' src={l.pic4} alt='' />
                </div>
            </div>
            <b>{l.listerName}'s {l.buildingType} near the {l.typeOfWater}</b>
            <span>{l.bedrooms} {l.bedrooms > 1 ? "bedrooms" : "bedroom"} · {l.beds} {l.beds > 1 ? "beds" : "bed"} · {l.bathrooms} {l.bathrooms > 1 ? "bathrooms" : "bathroom"}</span>
            <span>{l.city}, {l.country}</span>
            <span>{l.latitude > 0 ? l.latitude + '° N' : -1*l.latitude + '° S'}
            , {l.longitude > 0 ? l.longitude + '° E' : -1*l.longitude + '° W'}</span>
            <span>${l.price} per night</span>
            <span>{l.description}</span>
            </div>
            
            {/* <Link to='/'>ListingIndex</Link> */}
            <div id='amenities-container'>
                <h2>What this place offers</h2>
                <ul className='amenities'>
                    {l.petsAllowed ? <li><img src={pets}/>Pets allowed</li> : ''}
                    {l.parking ? <li><img src={parking}/>Parking</li> : ''}
                    {l.kitchen ? <li><img src={kitchen}/>Kitchen</li> : ''}
                    {l.boat ? <li><img src={boat}/>Boat</li> : ''}
                    {l.wifi ? <li><img src={wifi}/>Wifi</li> : ''}
                    {l.selfCheckIn ? <li><img src={checkin}/>Self Check-in</li> : ''}
                </ul>
            </div>
        </div>
    )
}


export default ListingShow