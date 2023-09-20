import React from 'react'
import { useState, useContext, useEffect } from 'react'
import { AppContext } from '@/context/appContext'

import { useRouter } from 'next/router';


const doctorboard = () => {
    const router = useRouter()

   
    return (
        <>

            <div className='w-[100%]  flex h-[100%]'>
                <div className='w-[75%] h-[100%]'></div>
                <div className='w-[25%] h-[100%]  p-[40px]  items-center flex flex-col border-l-4 border-purple-dark '>
                    <div className=' w-[100px] h-[100px] rounded-[50%]  mb-[15px] border-2 border-purple-dark'>
                        <img src="../assets/profile.png" />
                    </div>
                    
                    <h1 className=' font-[600]'>Harsh Ghosalkar</h1>

                    <h1 className='text-[#bfc1c4] mb-[20px]'>Mumbai, India</h1>
                    <div className='flex justify-around w-[100%] h-[50px] mb-[35px]'>
                        <div className='flex flex-col items-center '><img className='w-[20px] mb-[12px]' src="../assets/call.png" /><h1 className='text-[#bfc1c4]'>Call</h1> </div>
                        <div className='flex flex-col items-center '><img className='w-[20px] mb-[12px]' src="../assets/chat.png" /> <h1 className='text-[#bfc1c4]'>Chat</h1></div>
                        <div className='flex flex-col items-center '><img className='w-[20px] mb-[12px]' src="../assets/more.png" /> <h1 className='text-[#bfc1c4]'>More</h1></div>
                    </div>
                    <div className='flex justify-between w-[100%] h-[100px]'>
                        <div className='h-[100%] w-[40%] border-2 border-[#bfc1c4] rounded-[10px] p-[10px] flex flex-col items-center'>
                            <h1 className='mb-[10px]'>Revenue</h1>
                            <h1 className='text-[25px] font-bold'>$4,300</h1>
                        </div>
                        <div className='h-[100%] w-[40%] border-2 border-[#bfc1c4] mb-[10px] rounded-[10px] p-[10px] flex flex-col items-center'>
                            <h1 className='mb-[10px]'>Web visists</h1>
                            <h1 className='text-[25px] font-bold'>40</h1>
                        </div>

                    </div>
                    <div className='w-[100%] h-[300px] mt-[20px] '>
                        <h1 className='text-[15px] font-bold mt-[15px] mb-[25px]'>Information</h1>
                        <div className='flex justify-between my-[12px]'>
                            <h1 className='text-[#bfc1c4]'>Email</h1>
                            <h1 className='font-bold'>ghosalkarharsh454@gmail.com</h1>
                        </div>
                        <div className='flex justify-between my-[12px]'>
                            <h1 className='text-[#bfc1c4]'>phone</h1>

                            <h1 className=' font-[600] '>8850366017</h1>

                        </div>
                        <div className='flex justify-between my-[12px]'>
                            <h1 className='text-[#bfc1c4]'>Last visisted</h1>
                            <h1 className='font-bold'>08.45 PM</h1>
                        </div>
                    </div>
                    {/* </>
            ):""} */}
                </div>
            </div>
        </>


    )
}

export default doctorboard