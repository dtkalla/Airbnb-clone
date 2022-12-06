import React, { useState } from 'react';
import { Modal } from '../../context/Modal';
import SignupForm from './SignupForm';

function SignupFormModal() {
  const [showModal, setShowModal] = useState(false);
  const span = document.getElementsByClassName("close")[0];

  // span.onclick = function() {
  //   setShowModal(false);
  // }
  return (
    <>
      <button onClick={() => setShowModal(true)}>Sign Up</button>
      {showModal && (
        <>
        <Modal onClose={() => setShowModal(false)}>
          {/* <span class="close">&times;</span> */}
          <div className='login-header'>Sign Up!</div>
          <SignupForm />
        </Modal>
        </>
      )}
    </>
  );
}

export default SignupFormModal;
