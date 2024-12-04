import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar-profile"
export default class extends Controller {
  connect() {
    console.log("hello")
  }
}


{/* <div data-controller="navbar_profile" class="mt-5"> */}
  // <nav class="navbar bg-body-tertiary">
  //   <div class="container-fluid">
  //     <a class="navbar-brand" href="#">
  //       <img src="/docs/5.3/assets/brand/bootstrap-logo.svg" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
  //       Bootstrap
  //     </a>
  //   </div>
  // </nav>
{/* </div> */}