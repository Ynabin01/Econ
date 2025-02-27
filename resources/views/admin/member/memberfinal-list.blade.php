@extends('admin.layout.master')
@section('style')
    <link rel="stylesheet" href="{{ asset('assets/admin/plugins/DataTables/datatables.min.css') }}">
@endsection

@section('content')

    <!-- main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title" style="font-weight: bold;margin-bottom: 10px;">
                            Member List
                        </h3>
                        <div class="clearfix"></div>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-default backlink"><i class="fa fa-backward"
                                    aria-hidden="true"> </i> Back
                            </button>

                            <button type="button" class="btn btn-success add"><i class="fa fa-plus"
                                    aria-hidden="true"> </i>Create New
                                Navigation
                            </button>

                        </div>
                        <div class="col-sm-9">
                            @if (count($errors) > 0)
                                <div class="alert alert-danger">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                                            aria-hiddden="true">x</span></button>
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif

                            @if (Session::has('success'))
                                <div class="alert alert-success success" role="alert">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                                            aria-hidden="true">×</span></button>
                                    {{ Session::get('success') }}
                                </div>
                            @endif
                        </div>
                        <!-- <div class="box-tools pull-right">
                                <button type="button" class="btn btn-default backlink"><i class="fa fa-backward"
                                                                                          aria-hidden="true"> </i> Back
                                </button>
                                <select name="category_id" class="form-select" id="category_id">
                                    <option value="null" selected>Select Category</option>
                                    @foreach ($categories as $cat)
    <option value="/{{ $cat->nav_category }}/{{ $cat->id }}">{{ $cat->caption ?? '' }}</option>
    @endforeach
                                </select>
                                <button type="button" class="btn btn-success add"><i class="fa fa-plus"
                                                                                     aria-hidden="true"></i>Create new job
                                </button>

                            </div> -->

                    </div> <!-- /.box-header -->

                    <div class="box-body table-responsive">
                        <table id="datatable" class="table table-bordered">
                            <thead>

                                <tr>
                                    <th>S.NO: #</th>
                                    <th>Membership No</th>
                                    <th>Company Name</th>
                                    <th>Address </th>
                                    <th>Contact Info</th>
                                    <th>Contact Person</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php use App\Job; @endphp
                                @foreach ($members as $index => $member)
                                    <tr>
                                        <td>{{ $index + 1 }}</td>
                                        <td>{{ $member->membership_no ?? '' }}</td>
                                        <td>{{ $member->company_name ?? '' }}</td>
                                        <td>{{ $member->address ?? '' }}</td>
                                        <td>{{ $member->contact_person ?? '' }}</td>
                                        <td>{{ $member->contact_info ?? '' }}</td>
                                        <td><a href="{{route('MemberListsDelete',$member->id)}}"><button type="button"
                                                    class="btn btn-danger btn-sm">Delete</button></td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('scripts')
    <script src="{{ asset('assets/admin/plugins/DataTables/datatables.min.js') }}"></script>
    <script>
        $(document).ready(function() {
            $('#datatable').DataTable();
        });
    </script>

    <script>
        $('.add').click(function() {
            //http://127.0.0.1:8000/admin/job/Main/2224/create
            category_id = $('#category_id').val();
            // /admin/job/Main/2224/create
            if (category_id != "null") {
                var url = "/admin/job" + category_id + "/create"
                // alert(url)
                window.location = "/admin/MemberForm";
            } else {
                alert("please select category")
            }
        });
    </script>

    <script>
        $('.backlink').click(function() {
            parent.history.back();
            return false;
        });
    </script>

    <script>
        setTimeout(function() {
            $('.success').slideUp();
        }, 2000);
    </script>


    <script>
        // Change status
        $('.page_status').on('click', function() {
            var csrf = $('meta[name="csrf-token"]').attr('content');
            var id = $(this).attr("data-id");
            var url = "{{ url('admin/navigation-list') }}" + '/' + id;

            if ($(this).prop('checked') == true) {
                page_status = 1;
                $.ajax({
                    type: 'put',
                    url: url,
                    data: {
                        _token: csrf,
                        page_status: page_status
                    },
                    success: function(data) {
                        console.log(data);
                    },
                    error: function(data) {
                        console.log(data);
                    }
                });

            } else if ($(this).prop('checked') == false) {
                page_status = 0;
                $.ajax({
                    type: 'put',
                    url: url,
                    data: {
                        _token: csrf,
                        page_status: page_status
                    },
                    success: function(data) {
                        console.log(data);
                    },
                    error: function(data) {
                        console.log(data);
                    }
                });
            }
        });
    </script>
@endsection
