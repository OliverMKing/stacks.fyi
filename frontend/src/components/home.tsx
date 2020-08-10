
import React from 'react';
import blob from './blob.svg'
import { url } from 'inspector';

const styles = {
    background_image: {
        backgroundImage: 'url(' + blob + ')',
        backgroundRepeat: "no-repeat",
        height: '1000px',
        width: '100%'

    } as React.CSSProperties,
}
const App: React.FC = () => {
    return (
        <div style={styles.background_image}>
            <div className="m-auto">



                <div className="flex mb-4">
                    <div className="w-full  h-48"></div>
                </div>
                <div className="flex mb-2">
                    <div className="w-1/4 h-12"></div>
                    <div className="w-1/2  h-12">

                        <form className="w-full max-w-sm">

                            <div className="flex items-center space-x-2">
                                <input className="bg-white focus:outline-none border border-gray-500 rounded-lg py-3 px-4 block w-full appearance-none leading-normal" type="address" placeholder="Charlotte, NC" />

                                <button className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-full">
                                    Search
                    </button>
                            </div>
                        </form>
                    </div>

                </div></div>

        </div>

    );
}

export default App;