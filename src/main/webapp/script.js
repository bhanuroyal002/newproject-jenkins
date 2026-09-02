// Updated Form Submission Handling with Enhanced Feedback
document.getElementById('contact-form').addEventListener('submit', function (e) {
  e.preventDefault();
  
  const name = document.getElementById('name').value.trim();
  const email = document.getElementById('email').value.trim();
  const message = document.getElementById('message').value.trim();
  
  // Clear previous messages
  const existingMsg = document.querySelector('.form-feedback');
  if (existingMsg) existingMsg.remove();

  // Create feedback element
  const feedback = document.createElement('div');
  feedback.className = 'form-feedback';
  
  if (!name || !email || !message) {
    // Error state with high contrast
    feedback.style.cssText = `
      margin-top: 16px;
      padding: 14px 20px;
      border-radius: 12px;
      background: #fee2e2;
      border: 2px solid #dc2626;
      color: #991b1b;
      font-weight: 600;
      display: flex;
      align-items: center;
      gap: 10px;
    `;
    feedback.innerHTML = `
      <i class="fas fa-exclamation-circle" style="font-size: 1.2rem;"></i>
      Please fill out all fields before submitting.
    `;
    this.appendChild(feedback);
    
    // Highlight empty fields
    ['name', 'email', 'message'].forEach(fieldId => {
      const field = document.getElementById(fieldId);
      if (!field.value.trim()) {
        field.style.borderColor = '#dc2626';
        field.style.backgroundColor = '#fef2f2';
      } else {
        field.style.borderColor = '';
        field.style.backgroundColor = '';
      }
    });
    return;
  }

  // Success state with themed styling
  feedback.style.cssText = `
    margin-top: 16px;
    padding: 14px 20px;
    border-radius: 12px;
    background: #d1fae5;
    border: 2px solid #059669;
    color: #065f46;
    font-weight: 600;
    display: flex;
    align-items: center;
    gap: 10px;
    animation: slideIn 0.3s ease;
  `;
  feedback.innerHTML = `
    <i class="fas fa-check-circle" style="font-size: 1.2rem;"></i>
    Thank you, ${name}! We'll get back to you within 24 hours.
  `;
  this.appendChild(feedback);

  // Reset form with smooth transition
  this.reset();
  
  // Remove success message after 5 seconds
  setTimeout(() => {
    feedback.style.opacity = '0';
    feedback.style.transition = 'opacity 0.5s ease';
    setTimeout(() => feedback.remove(), 500);
  }, 5000);

  // Clear any error styling
  ['name', 'email', 'message'].forEach(fieldId => {
    const field = document.getElementById(fieldId);
    field.style.borderColor = '';
    field.style.backgroundColor = '';
  });

  // Optional: Log submission data (for demo)
  console.log('Form submitted:', { name, email, message });
});

// Add input event listeners to clear error styling on typing
['name', 'email', 'message'].forEach(fieldId => {
  const field = document.getElementById(fieldId);
  field.addEventListener('input', function() {
    if (this.value.trim()) {
      this.style.borderColor = '';
      this.style.backgroundColor = '';
    }
    // Remove any existing feedback when user starts typing
    const existingMsg = document.querySelector('.form-feedback');
    if (existingMsg) existingMsg.remove();
  });
});

// Add CSS animation for feedback messages
const style = document.createElement('style');
style.textContent = `
  @keyframes slideIn {
    from {
      transform: translateY(-10px);
      opacity: 0;
    }
    to {
      transform: translateY(0);
      opacity: 1;
    }
  }
`;
document.head.appendChild(style);
