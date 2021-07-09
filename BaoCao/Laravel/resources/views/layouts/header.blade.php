
@if (Session::has('username'))
    <h4 class="user-wel">Xin chào: {{ Session::get('username') }}</h4>
    <a class="log-out" href="{{ route('signout') }}"><i class="fas fa-sign-out-alt"></i></a>
    <nav class="navbar navbar-expand-sm navbar-light bg-light">
        <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId"
            aria-controls="collapsibleNavId" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavId">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item active">
                    <a class="nav-link" href="/companies">Home <span class="sr-only">(current)</span></a>
                </li>
                {{-- <li class="nav-item">
                    <a class="nav-link" href="{{ route('signout') }}">Logout</a>
                </li> --}}
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">Danh mục</a>
                    <div class="dropdown-menu" aria-labelledby="dropdownId">
                        <a class="dropdown-item" href="/companies">Companies</a>
                        <a class="dropdown-item" href="/trainers">Trainers</a>
                        <a class="dropdown-item" href="/search">Search</a>
                        <a class="dropdown-item" href="/category">Category</a>
                    </div>
                </li>

            </ul>
            <form class="form-inline my-2 my-lg-0" action="" method="get">
                <input class="form-control mr-sm-2" type="text" name="search" placeholder="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
@endif
