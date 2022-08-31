@extends("admin.layout.master")

@section('content')
<section class="main-contact-area ptb-100">
    <div class="container">
        <div class="section-title">
            <h2>MEMBER LIST</h2>
        </div>
        <form id="contactForm" action="/member-form/store" method="POST" autocomplete="on" enctype='multipart/form-data'>
            @csrf
            <div class="row">
                <div class="col-lg-6 col-sm-6">
                    <div class="form-group">
                        <input type="text" name="membership_no" id="name" class="form-control" required
                            data-error="Please enter your name" placeholder="Membership No.">
                        <div class="help-block with-errors"></div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-6">
                    <div class="form-group">
                        <input type="text" name="company_name" id="name" class="form-control" required
                            data-error="Please enter your name" placeholder="Company Name">
                        <div class="help-block with-errors"></div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-6">
                    <div class="form-group">
                        <input type="text" name="address" id="name" class="form-control" required
                            data-error="Please enter your name" placeholder="Address">
                        <div class="help-block with-errors"></div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-6">
                    <div class="form-group">
                        <input type="text" name="contact_person" id="name" class="form-control" required
                            data-error="Please enter your name" placeholder="Contact Person">
                        <div class="help-block with-errors"></div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12">
                    <div class="form-group">
                        <textarea name="contact_info" class="form-control" id="message" cols="30" rows="10" required
                            data-error="Write your message" placeholder="Contact Info"></textarea>
                        <div class="help-block with-errors"></div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12">
                    <div class="form-group">
                      <input type="submit" value="submit ">
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>
@endsection