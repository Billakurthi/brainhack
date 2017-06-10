<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="initial-details">
        <div class="row">
            <div class="col-xs-4 col-sm-3">
                <div class="profile-img">
                    <img class="img img-responsive img-circle" src="assets/images/profile-img.png" alt="Vajrang" title="Vajrang"/>
                </div>
            </div>
            <div class="col-xs-8 col-sm-9">
                <div class="highlights">
                    <p class="name">
                        Vajrang
                    </p>
                    <p class="designation">
                        Senior Software Engineer
                    </p>
                    <p class="hidden-xs objective">
                        Seeking a challenging position with a reputed organization where my technical skills & functional competencies in Design
                                & Development in the technology domain can be effectively used for contributing to the success
                                of the organization and can be further enhanced.
                    </p>

                    <p class="contact-details">
                        <span>
                            <i class="fa fa-phone fa-lg" aria-hidden="true"></i>9642229492
                        </span>
                        <span>
                            <i class="fa fa-envelope-o fa-lg" aria-hidden="true"></i>
                            <a href="mailto:avinash.billakurthi@gmail.com">avinash.billakurthi@gmail.com</a>
                        </span>
                    </p>
                    <div class="social-links-wrapper">
                        <ul class="social-links">
                            

                            <li class="btn" data-toggle="tooltip" title="Professional Profile!" data-placement="bottom">
                                <a href="https://www.linkedin.com/in/vajrang-billlakurthi" target="_blank">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </li>
                            <li class="btn" data-toggle="tooltip" title="Code Practise" data-placement="bottom">
                                <a href="https://www.freecodecamp.com/billakurthi" target="_blank">
                                    <i class="fa fa-free-code-camp"></i>
                                </a>
                            </li>
                            <li class="btn" data-toggle="tooltip" title="Add me!" data-placement="bottom">
                                <a href="https://www.facebook.com/vajrangb" target="_blank">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>


                        </ul>

                    </div>
                </div>




            </div>
        </div>

    </div>
    <!--./initial-details-->
    <!--profile summary and core-competencies-->
    <section>
        <div class="row">

            <!--column 1-->
            <div class="col-xs-12 col-sm-4 core-competencies">

                <div class="panel panel-default">

                    <h3 class="panel-heading">Technical Skills

                    </h3>

                    <ul class="panel-body list-group">
                        <li class="list-group-item">SASS, AngularJS, Bootstrap</li>
                        <li class="list-group-item">HTML5, CSS3, JQuery</li>
                        <li class="list-group-item">C#, JavaScript</li>
                        <li class="list-group-item">SQL Server 2012</li>
                        <li class="list-group-item">Visual Studio 2012, Sitefinity CMS, Reddot CMS</li>
                        <li class="list-group-item">Adobe Photoshop</li>


                    </ul>
                </div>

                <div class="awards-container">
                    <h3>Awards
                                <hr>
                    </h3>
                    <div class="panel-group" id="accordion">
                        <!--Ace Award-->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                        <!--<i class="fa"></i>-->
                                        ACE
                                    </a>
                                </h4>
                            </div>
                            <!--<div id="collapseOne" class="panel-collapse collapse in"> "in" is class to open by default-->
                            <div id="collapseOne" class="panel-collapse collapse">
                                <div class="panel-body">
                                    Continuously 2 years for consistent performance with highest ratings for Two years and Delivery Excellence (2015 – 2016,
                                            2014 – 2015)
                                </div>
                            </div>
                        </div>
                        <!--Ace Award-->
                        <!--Pat on Back (March 2017)-->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapsetwo">
                                        <!--<i class="fa"></i>-->
                                        Pat on Back
                                    </a>
                                </h4>
                            </div>
                            <div id="collapsetwo" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>March 2017 - Excellence in Delivery and Team Management</p>
                                    <p>November 2015 - Planning and Organising the BCP during Chennai floods.</p>
                                    <p>
                                        March 2015 - MyMMs project Valentine season 2015
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--Pat on Back (March 2017)-->
                        <!--Star of Mars (April 2016)-->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapsethree">
                                        <!--<i class="fa"></i>-->
                                        Star of Mars
                                    </a>
                                </h4>
                            </div>
                            <div id="collapsethree" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>April 2016 - Consistent performance in the project delivery</p>
                                </div>
                            </div>
                        </div>
                        <!--Star of Mars (April 2016)-->
                        <!--BRAVO-->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapsefour">
                                        <!--<i class="fa"></i>-->
                                        Bravo
                                    </a>
                                </h4>
                            </div>
                            <div id="collapsefour" class="panel-collapse collapse">
                                <div class="panel-body">
                                    March 2015 -Leading and organizing RCTLI day Team events.
                                </div>
                            </div>
                        </div>
                        <!--BRAVO-->

                    </div>
                </div>
                <div class="panel panel-default">

                    <h3 class="panel-heading">Soft Skills
                    </h3>

                    <ul class="panel-body">
                        <li class="badge">Communicator</li>
                        <li class="badge">Team Player</li>
                        <li class="badge">Thinker</li>
                        <li class="badge">Collaborative</li>
                        <li class="badge">Intutive</li>
                        <li class="badge">Innovative</li>



                    </ul>
                </div>


            </div>




            <!--column 2-->
            <!--/.core-competencies-->
            <div class="col-xs-12 col-sm-4 profile">

                <div class="career-snapshot">
                    <div class="panel panel-default">
                        <h3 class="panel-heading">Career Snapshot
                        </h3>
                        <ul class="panel-body">
                            <li>Experienced IT Team Leader possesses excellent leadership skills and a highly analytical
                                        focus. Sound communication skills and good ability to multitask allow for skilled
                                        delivery of IT solutions.

                            </li>
                            <li>Efficient in managing & leading teams for running successful process operations & experience
                                        of developing procedures and service standards for business excellence.</li>
                            <li>Having 3 years of experience in Development and Designing the various Websites and Web
                                        based Applications with backend support.</li>
                            <li>Proficient work experience in Technologies HTML5, CSS3, JQuery.</li>
                            <li>Knowledge in JavaScript framework AngularJS.</li>
                            <li>Highly critical thinker with effective researching skills proven through work experience
                                        in CSS frameworks like SASS.</li>

                            <li>Work Experience on backend tools like Visual Studio 2012 & 2015, SQLServer2012.</li>
                            <li>Experienced in translation of the UI/UX design wireframes to actual code that will produce visual elements of the application</li>
                        </ul>
                    </div>
                </div>


                <!--.career-snapshot-->

            </div>

            <!--column 3-->
            <div class="col-xs-12 col-sm-4">
                <!--.highlights container-->
                <div class="significant-highlights-container">
                    <div class="panel panel-default">
                        <h3 class="panel-heading">Significant Highlights
                        </h3>
                        <div class="panel-body">
                            <p>
                                Created Automation scripts for Photoshop using JavaScript helped in reducing the Manual work in the process.
                                        <span>Using automated process the through put of each order is reduced to 1minute from 6 minutes.<br>
                                            Created Mozilla Firefox add-on to validate the outputs of the orders within 6 hours.</span>
                            </p>
                            <p>
                                This permanently eliminated escalations regarding incompatible output of the orders and received appreciation from client
                                        for reactivity and professionalism.
                            </p>
                            <p>
                                Handling escalations and providing resolutions accordingly.
                            </p>
                            <p>
                                Created Facebook messenger bot to integrate YouTube search results API to messenger.

                            </p>
                            <p>
                                Created Facebook messenger bot to integrate fly Dubai API to messenger in fly Dubai hackathon.
                            </p>

                        </div>
                    </div>
                </div>


                <div class="personal-details">
                    <div class="panel panel-default">

                        <h3 class="panel-heading">Personal Details
                        </h3>

                        <ul class="panel-body list-group">
                            <li class="list-group-item"><b><i class="fa fa-birthday-cake"></i>Date of Birth : </b>9<sup>th</sup> April 1992
                            </li>
                            <li class="list-group-item"><b><i class="fa fa-language"></i>Languages known :  </b>English, Hindi & Telugu </li>
                            <li class="list-group-item"><b><i class="fa fa-arrows-alt"></i>Hobbies :   </b>Participating in hackathons, Member
                                        of freecodecamp Hyderabad Community.</li>
                            <li class="list-group-item"><b><i class="fa fa-map-marker"></i>Address : </b>H.NO 1-2-67, Sapthagiri Colony Kothepet,
                                        Saroornagar, Hyderabad - 500035</li>




                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!--profile summary and core-competencies-->
    <div class="row">
        <div class="col-xs-12">

            <!--.projects-timeline container-->
            <div class="projects-timeline">

                <div class="timeline-container">
                    <div class="page-header">
                        <h1 id="timeline">Projects Timeline</h1>
                    </div>
                    <ul class="timeline">
                        <li>
                            <div class="timeline-badge"><i class="fa fa-thumbs-up"></i></div>
                            <div class="timeline-panel">
                                <div class="table">


                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td class="timeline-heading" colspan="3">
                                                    <h4 class="timeline-title">suzuwan.co.uk</h4>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <small class="text-muted">
                                                        <!--<i class="fa fa-time"></i>-->
                                                        <b>Client :</b> Mars
                                                    </small>
                                                </td>
                                                <td><small class="text-muted">
                                                    <!--<i class="fa fa-time"></i>-->
                                                    <b>Team Size :</b> 5
                                                </small>
                                                </td>
                                                <td><small class="text-muted">
                                                    <!--<i class="fa fa-time"></i>-->
                                                    <b>Role :</b> Developer
                                                </small>
                                                </td>



                                            </tr>
                                            <tr>
                                                <td class="timeline-body" colspan="3">
                                                    <p>
                                                        Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings
                                                                elitis. Pra lá , depois divoltis porris, paradis. Paisis,
                                                                filhis, espiritis santis. Mé faiz elementum girarzis, nisi
                                                                eros vermeio, in elementis mé pra quem é amistosis quis leo.
                                                                Manduma pindureta quium dia nois paga. Sapien in monti palavris
                                                                qui num significa nadis i pareci latim. Interessantiss quisso
                                                                pudia ce receita de bolis, mais bolis eu num gostis.
                                                    </p>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>

                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-badge warning"><i class="fa fa-thumbs-up"></i></div>
                            <div class="timeline-panel">
                                <div class="table">


                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td class="timeline-heading" colspan="3">
                                                    <h4 class="timeline-title">suzuwan.co.uk</h4>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <small class="text-muted">
                                                        <!--<i class="fa fa-time"></i>-->
                                                        <b>Client :</b> Mars
                                                    </small>
                                                </td>
                                                <td><small class="text-muted">
                                                    <!--<i class="fa fa-time"></i>-->
                                                    <b>Team Size :</b> 5
                                                </small>
                                                </td>
                                                <td><small class="text-muted">
                                                    <!--<i class="fa fa-time"></i>-->
                                                    <b>Role :</b> Developer
                                                </small>
                                                </td>



                                            </tr>
                                            <tr>
                                                <td class="timeline-body" colspan="3">
                                                    <p>
                                                        Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings
                                                                elitis. Pra lá , depois divoltis porris, paradis. Paisis,
                                                                filhis, espiritis santis. Mé faiz elementum girarzis, nisi
                                                                eros vermeio, in elementis mé pra quem é amistosis quis leo.
                                                                Manduma pindureta quium dia nois paga. Sapien in monti palavris
                                                                qui num significa nadis i pareci latim. Interessantiss quisso
                                                                pudia ce receita de bolis, mais bolis eu num gostis.
                                                    </p>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-badge danger"><i class="fa fa-thumbs-up"></i></div>
                            <div class="timeline-panel">
                                <div class="table">


                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td class="timeline-heading" colspan="3">
                                                    <h4 class="timeline-title">suzuwan.co.uk</h4>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <small class="text-muted">
                                                        <!--<i class="fa fa-time"></i>-->
                                                        <b>Client :</b> Mars
                                                    </small>
                                                </td>
                                                <td><small class="text-muted">
                                                    <!--<i class="fa fa-time"></i>-->
                                                    <b>Team Size :</b> 5
                                                </small>
                                                </td>
                                                <td><small class="text-muted">
                                                    <!--<i class="fa fa-time"></i>-->
                                                    <b>Role :</b> Developer
                                                </small>
                                                </td>



                                            </tr>
                                            <tr>
                                                <td class="timeline-body" colspan="3">
                                                    <p>
                                                        Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings
                                                                elitis. Pra lá , depois divoltis porris, paradis. Paisis,
                                                                filhis, espiritis santis. Mé faiz elementum girarzis, nisi
                                                                eros vermeio, in elementis mé pra quem é amistosis quis leo.
                                                                Manduma pindureta quium dia nois paga. Sapien in monti palavris
                                                                qui num significa nadis i pareci latim. Interessantiss quisso
                                                                pudia ce receita de bolis, mais bolis eu num gostis.
                                                    </p>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-panel">
                                <div class="table">


                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td class="timeline-heading" colspan="3">
                                                    <h4 class="timeline-title">suzuwan.co.uk</h4>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <small class="text-muted">
                                                        <!--<i class="fa fa-time"></i>-->
                                                        <b>Client :</b> Mars
                                                    </small>
                                                </td>
                                                <td><small class="text-muted">
                                                    <!--<i class="fa fa-time"></i>-->
                                                    <b>Team Size :</b> 5
                                                </small>
                                                </td>
                                                <td><small class="text-muted">
                                                    <!--<i class="fa fa-time"></i>-->
                                                    <b>Role :</b> Developer
                                                </small>
                                                </td>



                                            </tr>
                                            <tr>
                                                <td class="timeline-body" colspan="3">
                                                    <p>
                                                        Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings
                                                                elitis. Pra lá , depois divoltis porris, paradis. Paisis,
                                                                filhis, espiritis santis. Mé faiz elementum girarzis, nisi
                                                                eros vermeio, in elementis mé pra quem é amistosis quis leo.
                                                                Manduma pindureta quium dia nois paga. Sapien in monti palavris
                                                                qui num significa nadis i pareci latim. Interessantiss quisso
                                                                pudia ce receita de bolis, mais bolis eu num gostis.
                                                    </p>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-badge info"><i class="fa fa-thumbs-up"></i></div>
                            <div class="timeline-panel">
                                <div class="table">


                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td class="timeline-heading" colspan="3">
                                                    <h4 class="timeline-title">suzuwan.co.uk</h4>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <small class="text-muted">
                                                        <!--<i class="fa fa-time"></i>-->
                                                        <b>Client :</b> Mars
                                                    </small>
                                                </td>
                                                <td><small class="text-muted">
                                                    <!--<i class="fa fa-time"></i>-->
                                                    <b>Team Size :</b> 5
                                                </small>
                                                </td>
                                                <td><small class="text-muted">
                                                    <!--<i class="fa fa-time"></i>-->
                                                    <b>Role :</b> Developer
                                                </small>
                                                </td>



                                            </tr>
                                            <tr>
                                                <td class="timeline-body" colspan="3">
                                                    <p>
                                                        Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings
                                                                elitis. Pra lá , depois divoltis porris, paradis. Paisis,
                                                                filhis, espiritis santis. Mé faiz elementum girarzis, nisi
                                                                eros vermeio, in elementis mé pra quem é amistosis quis leo.
                                                                Manduma pindureta quium dia nois paga. Sapien in monti palavris
                                                                qui num significa nadis i pareci latim. Interessantiss quisso
                                                                pudia ce receita de bolis, mais bolis eu num gostis.
                                                    </p>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                            <!--<div class="btn-group">
                                                <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-cog"></i> <span class="caret"></span>
                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="#">Action</a></li>
                                                    <li><a href="#">Another action</a></li>
                                                    <li><a href="#">Something else here</a></li>
                                                    <li class="divider"></li>
                                                    <li><a href="#">Separated link</a></li>
                                                </ul>
                                            </div>
                                        </div>-->

                        </li>
                        <li>
                            <div class="timeline-panel">
                                <div class="timeline-panel">
                                    <div class="table">


                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <td class="timeline-heading" colspan="3">
                                                        <h4 class="timeline-title">suzuwan.co.uk</h4>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <small class="text-muted">
                                                            <!--<i class="fa fa-time"></i>-->
                                                            <b>Client :</b> Mars
                                                        </small>
                                                    </td>
                                                    <td><small class="text-muted">
                                                        <!--<i class="fa fa-time"></i>-->
                                                        <b>Team Size :</b> 5
                                                    </small>
                                                    </td>
                                                    <td><small class="text-muted">
                                                        <!--<i class="fa fa-time"></i>-->
                                                        <b>Role :</b> Developer
                                                    </small>
                                                    </td>



                                                </tr>
                                                <tr>
                                                    <td class="timeline-body" colspan="3">
                                                        <p>
                                                            Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings
                                                                    elitis. Pra lá , depois divoltis porris, paradis. Paisis,
                                                                    filhis, espiritis santis. Mé faiz elementum girarzis,
                                                                    nisi eros vermeio, in elementis mé pra quem é amistosis
                                                                    quis leo. Manduma pindureta quium dia nois paga. Sapien
                                                                    in monti palavris qui num significa nadis i pareci latim.
                                                                    Interessantiss quisso pudia ce receita de bolis, mais
                                                                    bolis eu num gostis.
                                                        </p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-badge success"><i class="fa fa-thumbs-up"></i></div>
                            <div class="timeline-panel">
                                <div class="timeline-panel">
                                    <div class="table">


                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <td class="timeline-heading" colspan="3">
                                                        <h4 class="timeline-title">suzuwan.co.uk</h4>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <small class="text-muted">
                                                            <!--<i class="fa fa-time"></i>-->
                                                            <b>Client :</b> Mars
                                                        </small>
                                                    </td>
                                                    <td><small class="text-muted">
                                                        <!--<i class="fa fa-time"></i>-->
                                                        <b>Team Size :</b> 5
                                                    </small>
                                                    </td>
                                                    <td><small class="text-muted">
                                                        <!--<i class="fa fa-time"></i>-->
                                                        <b>Role :</b> Developer
                                                    </small>
                                                    </td>



                                                </tr>
                                                <tr>
                                                    <td class="timeline-body" colspan="3">
                                                        <p>
                                                            Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings
                                                                    elitis. Pra lá , depois divoltis porris, paradis. Paisis,
                                                                    filhis, espiritis santis. Mé faiz elementum girarzis,
                                                                    nisi eros vermeio, in elementis mé pra quem é amistosis
                                                                    quis leo. Manduma pindureta quium dia nois paga. Sapien
                                                                    in monti palavris qui num significa nadis i pareci latim.
                                                                    Interessantiss quisso pudia ce receita de bolis, mais
                                                                    bolis eu num gostis.
                                                        </p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <!--.projects-timeline-->
        </div>
    </div>
    <div class="giphy results">
        <asp:TextBox runat="server" ID="giphyResults" TextMode="MultiLine">

        </asp:TextBox>
    </div>



</asp:Content>

