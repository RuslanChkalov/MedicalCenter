import React from 'react';
import {Link} from "react-router-dom";


export function DirectionsCard(props) {
    const block = props.block;
    return (
        <div className="direction-card">
            <Link
                to={{
                    pathname: '/doctors',
                    search: "?directionId=" + block.medicalDirectionId
                }}
            >
            <div className="text-center">
                <img className="direction-image-container mb-2" src={block.medicalDirectionImagePath}/>
                <div className="h4 text-color-1 text-center">{block.medicalDirectionName}</div>
                <div className="h6 text-color-2 text-center">{block.medicalDirectionDescription}</div>
            </div>
            </Link>
        </div>
    );
}