<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class BackupController extends AbstractController
{
    #[Route('/api/backup', name: 'backup_database', methods: ['GET'])]
    public function backup(): Response
    {
        $backupFile = 'C:/Users/owner/Downloads/Work/backup/backup.sql';

        $dbUser = $_ENV['DB_USER'] ?? 'root';
        $dbPassword = $_ENV['DB_PASSWORD'] ?? '';
        $dbHost = $_ENV['DB_HOST'] ?? '127.0.0.1';
        $dbName = $_ENV['DB_NAME'] ?? 'user_management';

        $command = sprintf(
            'mysqldump --user=%s --password=%s --host=%s --port=%s %s > %s',
            $dbUser,
            $dbPassword,
            $dbHost,
            '3306',
            $dbName,
            $backupFile
        );

        error_log($command);

        exec($command . ' 2>&1', $output, $return_var);

        error_log(print_r($output, true));
        error_log($return_var);

        if ($return_var !== 0) {
            return new Response('Backup failed: ' . implode("\n", $output), 500);
        }

        return new Response('Backup created successfully', 200);
    }
}
