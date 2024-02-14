# Moodle-DL

Docker image build from https://github.com/C0D3D3V/Moodle-DL

Install podman: https://podman.io/docs/installation

```bash
alias podmoodledl='podman run -it -v "$PWD":/files ghcr.io/tna76874/moodle-dl:latest'
```

`podmoodledl` is configured with `--path /files`

````
usage: podmoodledl [-h]
                 [-i | -c | -nt | -cm | -ct | -cx | -md | -dof | --log-responses | --add-all-visible-courses | --version]
                 [-sso] [-u USERNAME] [-pw PASSWORD] [-tk TOKEN] [-p PATH]
                 [-mpac MAX_PARALLEL_API_CALLS] [-mpd MAX_PARALLEL_DOWNLOADS]
                 [-mpyd MAX_PARALLEL_YT_DLP] [-dcs DOWNLOAD_CHUNK_SIZE] [-iye]
                 [-wdf] [-mplw] [-ais] [-scv] [-v] [-q] [-ltf]
                 [-lfp LOG_FILE_PATH]

Moodle-DL helps you download all the course files from your Moodle account.

options:
  -h, --help            show this help message and exit
  -i, --init            Create an initial configuration. A CLI configuration
                        wizard will lead you through the initial
                        configuration.
  -c, --config          Start the configuration utility. It allows you to make
                        almost all available moodle-dl settings conveniently
                        via the CLI configuration wizard.
  -nt, --new-token      Obtain a new login token. Use it if the saved token
                        gets rejected by your Moodle.
  -cm, --change-notification-mail
                        Activate / deactivate / change the settings for
                        receiving notifications via e-mail.
  -ct, --change-notification-telegram
                        Activate / deactivate / change the settings for
                        receiving notifications via Telegram.
  -cx, --change-notification-xmpp
                        Activate / deactivate / change the settings for
                        receiving notifications via XMPP.
  -md, --manage-database
                        Manage the offline database. It allows you to delete
                        entries from the database that are no longer available
                        locally so that they can be downloaded again.
  -dof, --delete-old-files
                        Delete old copies of files. It allows you to delete
                        entries from the database and from local file system.
  --log-responses       Generate a responses.log file in which all JSON
                        responses from your Moodle are logged along with the
                        requested URLs.
  --add-all-visible-courses
                        Add all courses visible to the user to the
                        configuration file.
  --version             Print program version and exit
  -sso, --sso           Use SSO login instead of normal login. This flag can
                        be used together with --init and -nt. You will be
                        guided through the Single Sign On (SSO) login process
                        during initialization or new token retrieval.
  -u USERNAME, --username USERNAME
                        Specify username to skip the query when creating a new
                        token.
  -pw PASSWORD, --password PASSWORD
                        Specify password to skip the query when creating a new
                        token.
  -tk TOKEN, --token TOKEN
                        Specify token to skip the interactive login procedure.
  -p PATH, --path PATH  Sets the location of the configuration, logs and
                        downloaded files. PATH must be an existing directory
                        in which you have read and write access. (default:
                        current working directory)
  -mpac MAX_PARALLEL_API_CALLS, --max-parallel-api-calls MAX_PARALLEL_API_CALLS
                        Sets the number of max parallel Moodle Mobile API
                        calls. (default: 10)
  -mpd MAX_PARALLEL_DOWNLOADS, --max-parallel-downloads MAX_PARALLEL_DOWNLOADS
                        Sets the number of max parallel downloads. (default:
                        5)
  -mpyd MAX_PARALLEL_YT_DLP, --max-parallel-yt-dlp MAX_PARALLEL_YT_DLP
                        Sets the number of max parallel downloads using yt-
                        dlp. (default: 5)
  -dcs DOWNLOAD_CHUNK_SIZE, --download-chunk-size DOWNLOAD_CHUNK_SIZE
                        Sets the chunk size in bytes used when downloading
                        files. (default: 102400)
  -iye, --ignore-ytdl-errors
                        Ignore errors that occur when downloading with the
                        help of yt-dlp. Thus, no further attempt will be made
                        to download the file using yt-dlp. By default, yt-dlp
                        errors are critical, so the download of the
                        corresponding file will be aborted and when you run
                        moodle-dl again, the download will be repeated.
  -wdf, --without-downloading-files
                        Do not download any file. This allows the local
                        database to be updated without having to download all
                        files.
  -mplw, --max-path-length-workaround
                        Make all paths absolute in order to workaround the
                        max_path limitation on Windows. To use relative paths
                        on Windows you should disable the max_path limitation
                        see: https://docs.microsoft.com/en-
                        us/windows/win32/fileio/maximum-file-path-limitation
  -ais, --allow-insecure-ssl
                        Allow connections to unpatched servers. Use this
                        option if your server uses a very old SSL version.
  -scv, --skip-cert-verify
                        Don't verify TLS certificates. This option should only
                        be used in non production environments.
  -v, --verbose         Print various debugging information
  -q, --quiet           Sets the log level to error
  -ltf, --log-to-file   Log all output additionally to a log file called
                        MoodleDL.log
  -lfp LOG_FILE_PATH, --log-file-path LOG_FILE_PATH
                        Sets the location of the log files created with --log-
                        to-file. PATH must be an existing directory in which
                        you have read and write access. (default: same as
                        --path)

````

