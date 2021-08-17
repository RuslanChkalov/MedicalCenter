import {Link} from "react-router-dom";
import {NavigationMenu} from "./navigationmenu";

const React = require('react');

export function MainPage() {
    return (
        <div>
            <NavigationMenu activeElement={1} />
            <div className="row">
                <div className="mt-4"></div>
                <img className="image-container" src="/images/mainpage_pic1.png"></img>
                <div className="mt-4"></div>
                <img className="image-container" src="/images/mainpage_pic2.png"></img>
            </div>
        </div>
    );
}