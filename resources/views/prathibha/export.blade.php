<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Document</title>
    <link href='{{asset("assets/prathibha/vendor/bootstrap/css/bootstrap5.min.css")}}' rel="stylesheet">
    <style>
table, thead, tbody, th, td{
    border: 1px solid black;
}
th{
    font-size: 20px;
    text-align: center;
    /* background-color: rgb(100, 100, 200); */
    /* color: aliceblue; */
}
td{
    padding: 5px 2px;
    font-size: 16px;
    font-weight: 600;
    font-family: 'Times New Roman', Times, serif;
}
@font-face {
            font-family: 'revathy';
            src: url("{{ asset('fonts/revathy.ttf') }}");
        }

        /* Apply the Malayalam font to your content */
        body {
            font: revathy;
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
                <th scope="col">Name</th>
                <th scope="col">Program</th>
                <th scope="col">Music</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($data as $lp1)
                <tr class="content-row">
                    <td class="text-center">{{ $lp1->priority ? $lp1->priority : '#' }}</td>
                    <td class="text-center">{{ $lp1->class }}</td>
                    <td>{{ $lp1->contastant }}</td>
                    <td>{{ $lp1->program_name }}</td>
                    <td>{{ $lp1->song_name }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
</body>
</html>


