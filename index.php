<?php
require_once("./smarty-master/libs/Smarty.class.php");

echo "Hellossss" . "\n";

$smarty = new Smarty;

$smarty->assign('users', [
    'name', '555-4364'
]);

$arr = [
    ['name' => 'bob', 'phone' => '555-3425'],
    ['name' => 'jim', 'phone' => '555-4364'],
    ['name' => 'joe', 'phone' => '555-3422'],
    ['name' => 'SDN', 'phone' => '555-4973'],
    ['name' => 'fred', 'phone' => '555-3235']
];

$arr1 =
    ['name' => 'bob', 'phone' => '555-3425'];

$smarty->assign('str', "hello");
$a = 1;
$b = 10;

$smarty->assign('foo', [1, 2, 3]);

$smarty->assign('a', $a);
$smarty->assign('b', $b);

for ($x = $b; $x >= $a; $x--) {
    if ($x < $b - 1) {
        echo "$x*";
    } else {
        echo "$x" . "\n";
    }
}

$smarty->assign('firstname', 'Aayush');
$smarty->assign('lastname', 'Jain');
$smarty->assign('meetingPlace', 'New York');

$smarty->assign(
    'Contacts',
    [
        'fax' => '555-222-9876',
        'email' => 'zaphod@slartibartfast.example.com',
        'phone' => [
            'home' => '555-444-3333',
            'cell' => '555-111-1234'
        ]
    ]
);

$smarty->assign('num1', 10);
$smarty->assign('num2', 10);

$smarty->assign('bar', "I am Aayush Jain");
$smarty->assign('string', "I am Aayush Jain");

$smarty->assign('articleTitle', "Psychics predict world didn't endsssss");

$smarty->assign(
    'articleTitle1',
    "War Dims Hope for Peace. Child's Death Ruins Couple's Holiday.
    Man is Fatally Slain. Death Causes Loneliness, Feeling of Isolation."
);

$config['date'] = '%I:%M %p';
$config['time'] = '%H:%M:%S';
$smarty->assign('config', $config);
$smarty->assign('yesterday', strtotime('-1 day'));

$smarty->assign('articleTitle', 'Dealers Will Hear Car Talk at Noon.');
$smarty->assign('email', '');

$smarty->assign(
    'articleTitle2',
    "'Stiff Opposition Expected to Casketless Funeral Plan @#$'"
);
$smarty->assign('EmailAddress', 'smarty@example.com');

$smarty->assign(
    'articleTitle',
    'NJ judge to rule on nude beach.
Sun or rain expected today, dark tonight.
Statistics show that teen pregnancy drops off significantly after 25.'
);

$smarty->display('index.tpl');
