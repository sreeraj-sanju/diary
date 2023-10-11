<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Document</title>
    <!-- <link href='{{asset("assets/prathibha/vendor/bootstrap/css/bootstrap5.min.css")}}' rel="stylesheet"> -->
    <style>
        /* Basic table styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            font-size: 14px !important;
            line-height: 20px;
            font-weight: 900 !important;
            /* font-family: 'Times New Roman', Times, serif; */
            
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        /* Hover effect */
        tr:hover {
            background-color: #f5f5f5;
        }

        /* Responsive table */
        @media screen and (max-width: 600px) {
            table {
                width: 100%;
            }

            th, td {
                display: block;
                width: 100%;
            }
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <table class="table table-bordered">
        <thead class="thead-dark">
            <tr class="table-danger">
                <th scope="col">slNo</th>
                <th scope="col">Class</th>
                <th scope="col">Program</th>
                <th scope="col">Name</th>
                <th scope="col" >Participants</th>
                <th scope="col">Music</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($data as $lp1)
                <tr class="content-row">
                    <td class="text-center">{{ $lp1->priority ? $lp1->priority : '#' }}</td>
                    <td class="text-center">{{ $lp1->class }}</td>
                    <td>{{ $lp1->program_name }}</td>
                    <td>{{ $lp1->contastant }}</td>
                    <td>{{ $lp1->participant }}</td>
                    <td>{{ $lp1->song_name }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
</body>
</html>


