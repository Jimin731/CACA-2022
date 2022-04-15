import React, { Component } from 'react';
import logo from './images/clonet_logo_white.png';
import './Theme1.css';

class Subject extends Component {
    render() {
        return (
            <div>
                <header className="">
                    <div className="navbar navbar-default visible-xs">
                        <button type="button" className="navbar-toggle collapsed">
                            <span className="sr-only">Toggle navigation</span>
                            <span className="icon-bar"></span>
                            <span className="icon-bar"></span>
                            <span className="icon-bar"></span>
                        </button>
                        <a href="http://localhost:8005/home" className="navbar-brand">Clonet</a>
                    </div>

                    <nav className="sidebar">
                        <div className="navbar-collapse" id="navbar-collapse">
                            <div className="site-header hidden-xs">
                                <a className="site-brand" href="http://localhost:8005/home" title="">
                                    <img className="img-responsive site-logo" alt="" src={logo} width="40" height="40" />
                                    Clonet
                                </a>
                                {/* <p>portfolio</p> */}
                            </div>
                            <ul className="nav">
                                <li><a href="http://localhost:8005/home" title="">Home</a></li>
                                <li><a href="http://localhost:8005/about" title="">About</a></li>
                                <li><a href="http://localhost:8007/" title="">Project</a></li>
                                <li><a href="http://localhost:8005/contact" title="">Contact</a></li>
                                <li><a href="http://localhost:8005/login" title="">{this.props.name}</a></li>
                                {/*<li><a href="http://localhost:8003/contact.html" title="">Contact</a></li>*/}
                                {/* <li><a href="./components.html" title="">Components</a></li> */}
                                {/*<li><Link to="/contct_customer">Contact</Link></li>*/}
                            </ul>

                            <nav className="nav-footer">
                                <p className="nav-footer-social-buttons">
                                    <a className="fa-icon" href="https://www.instagram.com/" title="">
                                        <i className="fa fa-instagram"></i>
                                    </a>
                                    <a className="fa-icon" href="https://dribbble.com/" title="">
                                        <i className="fa fa-dribbble"></i>
                                    </a>
                                    <a className="fa-icon" href="https://twitter.com/" title="">
                                        <i className="fa fa-twitter"></i>
                                    </a>
                                </p>
                                <p>© Untitled | Website created with <a href="http://www.mashup-template.com/"
                                    title="Create website with free html template">Mashup
                                    Template</a>/<a href="https://www.unsplash.com/"
                                        title="Beautiful Free Images">Unsplash</a>
                                </p>
                            </nav>
                        </div>
                    </nav>
                </header>
            </div>
        );
    }
}

Subject.defaultProps = {
    name: 'Login'
}

export default Subject;
