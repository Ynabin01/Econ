@extends('layouts.master')

@section('content')
    <section class="page-header">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <h6>Member List</h6>
                </div>
                <div class="col-md-6">
                    <ul class="thm-breadcrumb list-unstyled">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="#">Member</a></li>
                        <li><span>Member List</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section class="innner_detail">
        <div class="container">
            <table class="table">
                
                    
              
                <thead>
                    <th>Membership No.</th>
                    <th>Company Name</th>
                    <th>Address</th>
                    <th>Contact Info</th>
                    <th>Contact Person</th>
                </thead>
                <tbody>
                    @foreach ($members as $member)
                    <tr>
                        <td data-label="Member No.">{{$member->membership_no}}</td>
                        <td data-label="Company Name">{{$member->company_name}}</td>
                        <td data-label="Address">{{$member->address}}</td>
                        <td data-label="Contact Info">{{$member->contact_info}}</td>
                        <td data-label="Contact Person">{{$member->contact_person}}</td>
                    </tr>
                    @endforeach


                </tbody>
               
            </table>
        </div>
    </section>
@endsection
