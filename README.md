Here's a `README.md` file for your "Tokenized Peer Tutoring" project. This file includes sections for vision, project features, future scope, project structure, and developer details.

---

# Tokenized Peer Tutoring

## Vision

The "Tokenized Peer Tutoring" project aims to create a decentralized platform that uses blockchain technology to facilitate and incentivize peer-to-peer tutoring. By leveraging smart contracts and tokenization, the platform ensures transparency, rewards engagement, and enhances the learning experience for both tutors and students.

![alt text](<Screenshot 2024-08-25 134049.png>)

## Project Features

### `TutoringToken` Contract
- **Token Management:** 
  - **Name & Symbol:** "TutoringToken" (TT)
  - **Decimals:** 18
  - **Minting:** Initial supply of tokens minted to the owner’s address.
  - **Transfer:** Transfer tokens between addresses.
  - **Allowance:** Approve other addresses to spend tokens on behalf of the sender.

- **Reward System:**
  - **Student Points:** Students earn 10 points for each completed tutoring session.
  - **Free Classes:** Students accumulate free classes when points reach multiples of 1000.

- **Functionality:**
  - **Reward Students:** Increases student points and mints tokens for the tutor.
  - **Use Free Classes:** Allows students to redeem free classes.

### `PeerTutoring` Contract
- **Session Management:**
  - **Create Session:** Create a new tutoring session with a specified tutor, student, and tokens earned.
  - **Complete Session:** Mark a session as completed and reward the tutor with tokens.

- **Integration:**
  - **Token Integration:** Interacts with `TutoringToken` to mint tokens for tutors upon session completion.

## Future Scope

- **Advanced Rewards System:** Implement additional reward tiers or bonuses for exceptional performance.
- **Integration with External Systems:** Connect with existing educational platforms or LMS (Learning Management Systems) for broader adoption.
- **User Interface:** Develop a frontend application for easier interaction with the smart contracts, allowing users to create sessions, track rewards, and view session details.
- **Scalability:** Explore layer-2 solutions or other blockchain platforms to enhance scalability and reduce transaction costs.

## Project Structure

1. **`TutoringToken.sol`**
   - Contains the implementation of the token logic, including minting, transferring, and managing rewards and free classes.

2. **`PeerTutoring.sol`**
   - Manages tutoring sessions, integrates with the `TutoringToken` contract, and handles session completion and token distribution.

## Developer Details

- **Name:** Godaba Jasmini
- **Email:** godabajasmini@gmail.com
- **GitHub:** jasminigodaba
- **LinkedIn:** Jasmini Godaba

## Deployment
Chain Name: Educhain Open Campus
contract id: 0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8
![alt text](<Screenshot 2024-08-25 133717.png>)

