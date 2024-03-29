#!/bin/bash
for (( i=1; i<=51; i++ ))
do
	v="public_html/question_$i.html"
	echo "<head>" > $v
	echo "<meta charset="UTF-8">" >> $v
	echo "<meta http-equiv="X-UA-Compatible" content="IE=edge">" >> $v
	echo "<meta name="viewport" content="width=devicr-width, initial scale=1.0">" >> $v
	echo "</head>" >> $v
	echo "<body>" >> $v
	if [[ $i -eq 1 ]]
	then
		echo "<p>Что такое LA? В каких единицах измеряется?</p>" >> $v
		echo "<p>Load average (средняя загрузка) - это метрика, которая показывает среднее количество процессов, ожидающих выполнения в определенный момент времени. Она измеряется в единицах нагрузки, которые представляют собой отношение количества активных процессов к количеству процессоров. Например, значение 1 означает, что процессор полностью загружен, а значение 2 - что в два раза больше процессов, чем процессоров. Обычно load average выражается в трех значениях: за последнюю минуту, за последние 5 минут и за последние 15 минут.</p>" >> $v
	fi
	if [[ $i -eq 2 ]]
	then
		echo "<p>Что будет если на сервере LA = 100?</p>" >> $v
		echo "<p>Если на сервере load average (LA) достигнет значения 100, это будет означать, что на каждый процессор приходится 100 процессов, ожидающих выполнения. Это может привести к снижению производительности сервера и увеличению времени отклика для пользователей.</p>" >> $v
	fi
	if [[ $i -eq 3 ]]
	then
		echo "<p>Почему при высоких показателях значения LA на сервере может не наблюдаться проблем (консоль ssh отзывается, сервисы работают в обычном режиме)?</p>" >> $v
		echo "<p>Возможно, на сервере установлено достаточное количество процессоров, чтобы обеспечить нормальную работу при высокой нагрузке. Также может быть оптимизирована работа приложений и сервисов, чтобы они не создавали большое количество процессов и не нагружали сервер. Кроме того, высокие показатели LA могут быть временным явлением и не приводить к проблемам, если нагрузка на сервер снизится в ближайшее время.</p>" >> $v
	fi
	if [[ $i -eq 4 ]]
	then
		echo "<p>Представлен вывод команды top. Что означает каждая запись в выводе? top - 21:29:24 up 14:18, 1 user, load average: 0,78, 1,48, 1,10 Tasks: 277 total, 3 running, 274 sleeping, 0 stopped, 0 zombie %Cpu(s): 12,4 us, 2,5 sy, 0,1 ni, 84,8 id, 0,1 wa, 0,0 hi, 0,1 si, 0,0 st KiB Mem : 7106404 total, 306972 free, 3127144 used, 3672288 buff/cache KiB Swap: 8191996 total, 8191996 free, 0 used. 3270520 avail Mem</p>" >> $v
		echo "<ol>" >> $v
		echo "<li>top - текущее время и длительность работы системы.</li>" >> $v
		echo "<li>up - время, прошедшее с момента последней перезагрузки.</li>" >> $v
		echo "<li>user - количество пользователей, находящихся в системе.</li>" >> $v
		echo "<li>load average - средняя загрузка процессора за последние 1, 5 и 15 минут.</li>" >> $v
		echo "<li>Tasks - общее количество процессов на сервере, разделенное по состояниям (запущенные, работающие, спящие, остановленные, зомби).</li>" >> $v
		echo "<li>процент использования процессора по различным типам задач. Каждый тип задачи представлен своим сокращением</li>" >> $v
		echo "<li>KiB Mem - информация о памяти: общее количество, свободное, используемое и буферизованное.</li>" >> $v
		echo "<li>KiB Swap - информация о разделе подкачки: общее количество, свободное и используемое.</li>" >> $v
		echo "<li>avail Mem - доступная для использования память (объединение свободной и буферизованной памяти).</li>" >> $v
		echo "</ol>" >> $v
	fi
	if [[ $i -eq 5 ]]
	then
		echo "<p>Как в утилите top в Linux посмотреть нагрузку на каждое ядро процессора?</p>" >> $v
		echo "<p>В утилите top в Linux можно посмотреть нагрузку на каждое ядро процессора, нажав клавишу "1" на клавиатуре. Это отобразит информацию о каждом ядре процессора в отдельности. Также можно использовать команду "mpstat -P ALL" для просмотра нагрузки на каждое ядро процессора в терминале.</p>" >> $v
	fi
	if [[ $i -eq 6 ]]
	then
		echo "<p>Как в утилите top в Linux посмотреть какой командой был запущен процесс?</p>" >> $v
		echo "<p>Для просмотра команды, с помощью которой был запущен процесс, можно использовать следующую команду в утилите top: c или c <pid> (где <pid> - идентификатор процесса). Также можно использовать команду ps -p <pid> -o command для просмотра команды запуска процесса.</p>" >> $v
	fi
	if [[ $i -eq 7 ]]
	then
		echo "<p>Где хранятся имена файлов/директорий?</p>" >> $v
		echo "<p>Имена файлов и директорий хранятся в inode (индексный дескриптор) файловой системы.</p>" >> $v
	fi
	if [[ $i -eq 8 ]]
	then
		echo "<p>Как удалить файл с именем -rf?</p>" >> $v
		echo "<p>Файл с именем -rf можно удалить с помощью команды rm. Для этого необходимо выполнить следующую команду в терминале:rm -rf – -rf" >> $v
	fi
	if [[ $i -eq 9 ]]
	then
		echo "<p>Как посмотреть описание дескриптора? Как посмотреть время последней модификации файла?</p>" >> $v
		echo "<p>Описание дескриптора можно посмотреть с помощью команды ls -l. В выводе этой команды в столбце Permissions будет указано, какой тип дескриптора у файла. ремя последней модификации файла можно посмотреть с помощью команды ls -l или stat <имя_файла>. В выводе этих команд будет указана дата и время последнего изменения файла в столбце Last modified или Modify.</p>" >> $v
	fi
	if [[ $i -eq 10 ]]
	then
		echo "<p>Для чего нужна переменная окружения PATH?</p>" >> $v
		echo "<p>Переменная окружения PATH определяет список каталогов, в которых операционная система будет искать исполняемые файлы при выполнении команд в терминале. Это позволяет запускать программы и скрипты без указания полного пути к ним. Переменная PATH также позволяет добавлять новые каталоги для поиска исполняемых файлов, что упрощает управление программами и скриптами на компьютере.</p>" >> $v
	fi
	if [[ $i -eq 11 ]]
	then
		echo "<p>Как посмотреть нагрузку на диски?</p>" >> $v
		echo "<p> в Linux - командами df и top.<p>" >> $v
	fi
	if [[ $i -eq 12 ]]
	then
		echo "<p>Что такое файл в понятиях Unix-like операционных системах?</p>" >> $v
		echo "<p>Это именованная последовательность байтов, хранящаяся на устройстве хранения информации (например, жестком диске). Файлы могут содержать различные типы данных, такие как текст, изображения, аудио и видео. В Unix-like системах файлы имеют свойства, такие как права доступа, время создания и модификации, а также могут быть организованы в структуру каталогов и подкаталогов. Файлы являются основным способом хранения и организации информации в Unix-like системах.</p>" >> $v
	fi
	if [[ $i -eq 13 ]]
	then
		echo "<p>Что такое RAID? Какие массивы бывают?</p>" >> $v
		echo "<p>RAID (Redundant Array of Independent Disks) - это технология хранения данных, которая объединяет несколько физических дисков в один логический диск для повышения производительности и надежности хранения данных.</p>" >> $v
		echo "<p>Виды массивов:</p>" >> $v
		echo "<ol>" >> $v
		echo "<li>RAID 0 (Striping) - данные разбиваются на блоки и записываются на несколько дисков одновременно, что повышает скорость чтения и записи, но не обеспечивает защиту от сбоев дисков.</li>" >> $v
		echo "<li>RAID 1 (Mirroring) - данные дублируются на двух дисках, что обеспечивает повышенную надежность хранения данных, но не увеличивает скорость чтения и записи.</li>" >> $v
		echo "<li>RAID 5 (Striping with Parity) - данные разбиваются на блоки и записываются на несколько дисков, а также используется дополнительный диск для хранения информации о четности данных. Это позволяет восстановить данные при сбое одного из дисков.</li>" >> $v
		echo "<li>RAID 6 (Striping with Double Parity) - аналогично RAID 5, но используется два диска для хранения информации о четности, что повышает надежность хранения данных.</li>" >> $v
		echo "<li>RAID 10 (Mirroring and Striping) - комбинация RAID 1 и RAID 0, когда данные дублируются на нескольких дисках и одновременно разбиваются на блоки для повышения производительности.</li>" >> $v
		echo "</ol>" >> $v
		echo "<p>Кроме того, существуют также и другие типы RAID-массивов, такие как RAID 2, RAID 3, RAID 4, RAID 7, но они редко используются в современных системах хранения данных.</p>" >> $v
	fi
	if [[ $i -eq 14 ]]
	then
		echo "<p>При каком количестве одновременно вышедших из строя дисков обеспечивает работоспособность RAID 6?</p>" >> $v
		echo "<p>RAID 6 может обеспечить работоспособность при одновременном выходе из строя двух дисков. Это возможно благодаря наличию двух дополнительных дисков для хранения информации о четности.</p>" >> $v
	fi
	if [[ $i -eq 15 ]]
	then
		echo "<p>В чем разница между объявлением переменной export VAR=VALUE и VAR=VALUE в bash?</p>" >> $v
		echo "<p>Переменная, объявленная с помощью export VAR=VALUE, будет доступна не только в текущем скрипте, но и во всех дочерних процессах. Таким образом, она будет экспортирована в окружение системы и будет доступна для использования в других скриптах или командах.</p>" >> $v
		echo "<p>Переменная, объявленная как VAR=VALUE, будет доступна только в текущем скрипте и не будет экспортирована в окружение системы. Она будет доступна только внутри текущего скрипта и не будет видна другим процессам или скриптам.</p>" >> $v
	fi
	if [[ $i -eq 16 ]]
	then
		echo "<p>Как остановить выполнение скрипта в bash при возникновении ошибки в команде?</p>" >> $v
		echo "<p>CTRL + C</p>" >> $v
	fi
	if [[ $i -eq 17 ]]
	then
		echo "<p>Что в bash скрипте означает команда set -euo pipefail?</p>" >> $v
		echo "<p>Команда set -euo pipefail устанавливает опции для оболочки bash, которые позволяют управлять обработкой ошибок и поведением скрипта. Опция e (errexit) указывает оболочке завершать выполнение скрипта, если в нем происходит ошибка. Опция u (nounset) указывает оболочке выдавать ошибку, если в скрипте используется неопределенная переменная. Опция o (pipefail) указывает оболочке завершать выполнение скрипта, если одна из команд в конвейере (pipeline) завершается с ошибкой. Опция pipefail также позволяет получить код ошибки от последней команды в конвейере, а не только от последней команды в скрипте.</p>" >> $v
	fi
	if [[ $i -eq 18 ]]
	then
		echo "<p>Как активировать debug режим в bash?</p>" >> $v
		echo "<p>Для активации debug режима в bash можно использовать опцию -x при запуске скрипта или включить ее внутри скрипта с помощью команды set -x. Это позволит выводить на экран все команды и их аргументы, которые выполняются в процессе работы скрипта. Также можно использовать опцию -v для вывода на экран текста команд перед их выполнением.</p>" >> $v
	fi
	if [[ $i -eq 19 ]]
	then
		echo "<p>Что значит $@ в bash?</p>" >> $v
		echo "<p>В bash @ представляет собой список всех аргументов командной строки, переданных при запуске скрипта или функции.</p>" >> $v
	fi
	if [[ $i -eq 20 ]]
	then
		echo "<p>Какой код сигнала будет выполнен при исполнении команды kill ?</p>" >> $v
		echo "<p>При исполнении команды kill будет выполнен код сигнала SIGTERM (15), который по умолчанию используется для завершения процесса.</p>" >> $v
	fi
	if [[ $i -eq 21 ]]
	then
		echo "<p>Как выполнить фильтрацию вывода команды, чтобы на экран были выведены только ошибки (STDERR), игнорируя STDOUT?</p>" >> $v
		echo "<p>Для выполнения фильтрации вывода команды можно использовать оператор перенаправления вывода 2>, который позволяет перенаправить только STDERR в указанный файл или устройство.</p>" >> $v
	fi
	if [[ $i -eq 22 ]]
	then
		echo "<p>Какую команду необходимо выполнить, чтобы посмотреть какие пользователи вошли в систему в систему?</p>" >> $v
		echo "<p>who или w. Например, who -u покажет список всех пользователей, вошедших в систему, с указанием времени входа и активных процессов.</p>" >> $v
	fi
	if [[ $i -eq 23 ]]
	then
		echo "<p>Какой файл необходимо отредактировать, чтобы отключить ssh аутентификацию по паролю?</p>" >> $v
		echo "<p>Для отключения ssh аутентификации по паролю необходимо отредактировать файл /etc/ssh/sshd_config и изменить параметр "PasswordAuthentication" на "no". После этого необходимо перезапустить сервис sshd для применения изменений.</p>" >> $v
	fi
	if [[ $i -eq 24 ]]
	then
		echo "<p>В каком файле находится информация о смонтированных каталогах в файловую систему?</p>" >> $v
		echo "<p>Информация о смонтированных каталогах находится в файле /etc/fstab.</p>" >> $v
	fi
	if [[ $i -eq 25 ]]
	then
		echo "<p>Что выведет команда cat a и почему? mkdir /tmp/abc cd /tmp/abc ls >a 2>b cat a</p>" >> $v
		echo "<p>Команда cat a выведет содержимое файла a, который был создан в каталоге /tmp/abc при помощи команды ls. Это произойдет потому, что команда ls с помощью оператора > перенаправила вывод своего выполнения в файл a. При этом ошибка, которая могла возникнуть при выполнении команды ls, будет перенаправлена в файл b.</p>" >> $v
	fi
	if [[ $i -eq 26 ]]
	then
		echo "<p>В bash-скрипте указан атрибут оболочки set -x. В одной из команд происходит ошибка и скрипт завершает свою работу. Как сделать, чтобы при возникновении ошибки в определенной команде скрипт продолжил свою работу?</p>" >> $v
		echo "<p>Чтобы скрипт продолжил свою работу при возникновении ошибки в определенной команде, необходимо добавить после этой команды оператор || и указать команду, которая будет выполняться в случае ошибки. Например, если команда с ошибкой называется command, то нужно изменить ее на command || true. Таким образом, если команда command завершится с ошибкой, то вместо остановки скрипта будет выполнена команда true, которая не делает ничего и позволяет продолжить работу скрипта.</p>" >> $v
	fi
	if [[ $i -eq 27 ]]
	then
		echo "<p>Что такое системный вызов, какие они бывают?</p>" >> $v
		echo "<p>Системный вызов (system call) - это механизм взаимодействия между пользовательским приложением и операционной системой. Он позволяет приложению обращаться к функциям и сервисам операционной системы для выполнения определенных задач, например, создания файлов, управления процессами, сетевым взаимодействием и т.д. Создание и управление процессами - например, fork(), exec(), wait(). Работа с файлами и директориями - например, open(), read(), write(). Управление памятью - например, mmap(), brk(). Сетевое взаимодействие - например, socket(), connect(), send(), recv(). Управление устройствами - например, ioctl(), read(), write(). Управление ресурсами - например, time(), getpid(), getuid().</p>" >> $v
	fi
	if [[ $i -eq 28 ]]
	then
		echo "<p>Что такое сигнал в Unix, зачем они нужны и разница между 9 и 15 сигналами?</p>" >> $v
		echo "<p>Сигнал в Unix - это средство межпроцессного взаимодействия, которое позволяет операционной системе уведомлять процессы о различных событиях, например, о завершении работы другого процесса или о необходимости завершения работы. Сигналы используются для обработки исключительных ситуаций, синхронизации процессов и управления ресурсами. Сигнал SIGKILL (9) используется для немедленного завершения процесса, а сигнал SIGTERM (15) - для плавного завершения. Основная разница между 9 и 15 сигналами заключается в том, что SIGKILL не может быть перехвачен или игнорирован процессом, а SIGTERM может быть перехвачен и обработан, например, для сохранения данных перед завершением работы.</p>" >> $v
	fi
	if [[ $i -eq 29 ]]
	then
		echo "<p>Что такое inode? Какая информация там хранится?</p>" >> $v
		echo "<p>Inode (index node) в Unix - это структура данных, которая хранит информацию о файле или каталоге в файловой системе. Каждый файл или каталог имеет свой уникальный inode, который идентифицирует его и хранит метаданные о нем. В inode хранится следующая информация: идентификатор владельца файла или каталога; идентификатор группы владельцев; размер файла в байтах; дата и время создания, последнего доступа и последней модификации; права доступа к файлу или каталогу; колличество ссылок на файл или каталог; номер блока данных, где хранится содержимое файла или каталога, номер блока данных, где хранится список блоков данных, составляющих файл или каталог; тип файла.</p>" >> $v
	fi
	if [[ $i -eq 30 ]]
	then
		echo "<p>Что такое hard link? В чем разница между hard link и soft link? Примеры их практического применения.</p>" >> $v
		echo "<p>Hard link (жесткая ссылка) - это специальный тип ссылки на файл в Unix-подобных системах, который позволяет создать несколько имен для одного и того же файла. При этом все эти имена имеют одинаковые права доступа и указывают на один и тот же inode. То есть, если удалить одно из имен, файл останется доступным через остальные имена. Разница между hard link и soft link заключается в том, что soft link (символическая ссылка) является отдельным файлом, который содержит путь к другому файлу. При удалении исходного файла, на который указывает символическая ссылка, она становится бессмысленной. Пример практического применения hard link: Создание резервных копий файлов. Жесткие ссылки позволяют создать несколько копий одного файла без необходимости дублирования данных. Пример практического применения soft link: Создание ссылок на часто используемые файлы или каталоги. Например, можно создать символическую ссылку на папку с программами и добавить ее в переменную PATH, чтобы иметь быстрый доступ к этим программам из любой директории.</p>" >> $v
	fi
	if [[ $i -eq 31 ]]
	then
		echo "<p>Какие состояния процессов существуют? Что значит состояние процесса D?</p>" >> $v
		echo "<p>Существует 5 основных состояний процессов: New - новый процесс, который только что был создан и еще не выполнялся. Ready - процесс готов к выполнению и ожидает своей очереди на выполнение. Running - процесс выполняется на процессоре. Waiting - процесс ожидает события, которое может привести к его выполнению (например, завершение операции ввода-вывода). Terminated - процесс завершил свое выполнение.</p>" >> $v
		echo "<p>Состояние процесса D означает, что процесс заблокирован и ожидает завершения операции ввода-вывода. Это может быть вызвано, например, если процесс пытается получить доступ к файлу или устройству, которые заняты другим процессом. Как только операция ввода-вывода будет завершена, процесс перейдет в состояние Ready и будет готов к выполнению.</p>" >> $v
	fi
	if [[ $i -eq 32 ]]
	then
		echo "<p>Что такое процесс-зомби и процесс-сирота? Можно ли самостоятельно сделать зомби?</p>" >> $v
		echo "<p>Процесс-зомби (zombie process) - это процесс, который завершил свое выполнение, но его родительский процесс еще не получил информацию о его завершении. Такой процесс не занимает ресурсы процессора или памяти, но его идентификатор процесса все еще существует в системе. Обычно процесс-зомби создается, когда родительский процесс не обрабатывает сигнал о завершении своего дочернего процесса.</p>" >> $v
		echo "<p>Процесс-сирота (orphan process) - это процесс, который продолжает выполняться после завершения своего родительского процесса. Такой процесс может быть создан, например, если родительский процесс завершается неожиданно или если родительский процесс является демоном и не завершается после запуска дочернего процесса.</p>" >> $v
		echo "<p>Создать зомби-процесс самостоятельно невозможно, так как это происходит автоматически при завершении процесса и отсутствии обработки сигнала о его завершении со стороны родительского процесса. Однако, можно предотвратить появление зомби-процессов, правильно обрабатывая сигналы о завершении дочернего процесса в родительском процессе.</p>" >> $v
	fi
	if [[ $i -eq 33 ]]
	then
		echo "<p>Что такое файловый дескриптор? Какая информация там хранится?</p>" >> $v
		echo "<p>Файловый дескриптор (file descriptor) - это целочисленный идентификатор, который используется для доступа к файлам или другим ресурсам в операционной системе. Он представляет собой ссылку на открытый файл или устройство и содержит информацию о его состоянии и расположении в памяти.</p>" >> $v
		echo "<p>Файловый дескриптор хранит информацию о текущем положении в файле, правах доступа к файлу, режиме открытия (чтение, запись, обновление), а также о других параметрах, необходимых для работы с файлом. Он также может содержать ссылку на таблицу операций для выполнения различных операций с файлом, таких как чтение, запись, перемещение указателя на нужное место и т.д.</p>" >> $v
	fi
	if [[ $i -eq 34 ]]
	then
		echo "<p>Что такое buffer/cache память? Для чего нужна?</p>" >> $v
		echo "<p>Buffer/cache память - это часть оперативной памяти компьютера, которая используется для временного хранения данных, которые были недавно загружены или записаны. Она представляет собой комбинацию буферной и кэш-памяти.</p>" >> $v
		echo "<p>Buffer/cache память используется для оптимизации работы с файлами и другими ресурсами в операционной системе. Она позволяет ускорить доступ к данным и уменьшить количество операций ввода-вывода, что повышает производительность системы в целом.</p>" >> $v
	fi
	if [[ $i -eq 35 ]]
	then
		echo "<p>Представлен вывод команды free. $ free -m total used free shared buff/cache available Mem: 6930 3598 843 183 2489 2919 Swap: 15999 4 15995 Почему доступной (available) памяти сейчас 2919, если свободной (free) памяти 843?</p>" >> $v
		echo "<p>Доступная память (available) включает в себя не только свободную память (free), но и буферную и кэш-память. В данном случае, доступная память составляет 2919 МБ, что включает в себя 843 МБ свободной памяти и 2489 МБ буферной/кэш-памяти. Это означает, что из общего объема памяти в 6930 МБ, только 843 МБ в данный момент не используются для хранения данных. Остальная память используется для буферизации и кэширования данных, чтобы ускорить доступ к ним.</p>" >> $v
	fi
	if [[ $i -eq 36 ]]
	then
		echo "<p>Порядок загрузки дистрибутива Linux.</p>" >> $v
		echo "<p>Шаг 1: Выбрать нужный дистрибутив Linux. Шаг 2: Перейти на официальный сайт выбранного дистрибутива. Шаг 3: Найти раздел загрузки или скачать дистрибутив. Шаг 4: Выбрать подходящую версию для своей системы (32-бит или 64-бит). Шаг 5: Скачать файл ISO образа дистрибутива. Шаг 6: Создать загрузочную флешку или DVD с помощью специальной программы (например, Rufus или Etcher). Шаг 7: Подготовить компьютер к установке Linux, сделав резервную копию важных данных и проверив совместимость оборудования. Шаг 8: Подключить загрузочное устройство к компьютеру и перезагрузить его. Шаг 9: В настройках BIOS выбрать загрузку с подключенного устройства. Шаг 10: Запустить установку дистрибутива, следуя инструкциям на экране. Шаг 11: Выбрать язык и часовой пояс. Шаг 12: Создать разделы для установки (если требуется). Шаг 13: Выбрать место для установки загрузчика GRUB. Шаг 14: Дождаться завершения установки. Шаг 15: Перезагрузить компьютер и наслаждаться работой в новой операционной системе Linux.</p>" >> $v
	fi
	if [[ $i -eq 37 ]]
	then
		echo "<p>Что такое GitFlow?</p>" >> $v
		echo "<p>GitFlow - это методология управления версиями и разработкой программного обеспечения, основанная на системе контроля версий Git. Она предоставляет набор правил и рекомендаций для организации рабочего процесса в команде разработчиков, позволяя эффективно управлять изменениями кода, выпускать новые версии продукта и поддерживать стабильность и надежность программного обеспечения. GitFlow включает в себя использование нескольких веток для различных целей (например, ветки для разработки новых функций, исправления ошибок, релизов и т.д.), а также определенные правила для слияния и публикации изменений. Эта методология широко используется в различных проектах, особенно в коммерческой разработке ПО.</p>" >> $v
	fi
	if [[ $i -eq 38 ]]
	then
		echo "<p>Чем merge отличается от rebase?</p>" >> $v
		echo "<p>Merge - это процесс, при котором изменения из одной ветки (например, ветки для разработки новой функции) объединяются с другой веткой (например, основной веткой продукта). При этом создается новый коммит, который содержит все изменения из обеих веток. Это позволяет сохранить историю изменений и отслеживать, какие изменения были объединены.</p>" >> $v
		echo "<p>Rebase - это процесс, при котором изменения из одной ветки применяются к другой ветке путем переигрывания коммитов. В результате, история изменений становится линейной, а все коммиты из одной ветки добавляются непосредственно перед коммитами из другой ветки. Это позволяет сохранить более чистую и простую историю изменений, но может быть опасным, если другие разработчики работают с той же веткой и не ожидают таких изменений.</p>" >> $v
		echo "<p>Таким образом, основное отличие между merge и rebase заключается в том, каким образом происходит объединение изменений и как это отражается в истории коммитов. Оба подхода имеют свои преимущества и недостатки, и выбор между ними зависит от конкретной ситуации и предпочтений команды разработчиков.</p>" >> $v
	fi
	if [[ $i -eq 39 ]]
	then
		echo "<p>Чем tag отличается от branch?</p>" >> $v
		echo "<p>Branch (ветка) - это отдельная линия разработки, которая создается для работы над определенной функцией или задачей. Ветки позволяют разработчикам работать над различными изменениями параллельно и объединять их в основную ветку при необходимости. Ветки могут быть созданы, переключены и удалены в любой момент.</p>" >> $v
		echo "<p>Tag (метка) - это статическая ссылка на определенный коммит в истории изменений. Она используется для пометки важных точек в разработке, таких как релизы или версии продукта. В отличие от веток, метки не могут быть переключены или удалены, они остаются на том же коммите всегда.</p>" >> $v
		echo "<p>Таким образом, основное отличие между tag и branch заключается в их назначении. Ветки используются для организации работы над изменениями, а метки - для пометки важных точек в разработке. Оба подхода позволяют управлять историей изменений и отслеживать версии продукта, но в разных целях.</p>" >> $v
	fi
	if [[ $i -eq 40 ]]
	then
		echo "<p>В ветке develop есть коммит с изменениями, которые нужно перенести в ветку master. Как это сделать?</p>" >> $v
		echo "<p>Для переноса изменений из ветки develop в ветку master можно использовать команду merge или rebase.</p>" >> $v
		echo "<p>Merge: </p>" >> $v
		echo "<ol>" >> $v
		echo "<li>Переключитесь на ветку master с помощью команды git checkout master</li" >> $v
		echo "<li>Выполните команду git merge develop, которая объединит изменения из ветки develop в текущую ветку (master)</li>" >> $v
		echo "<li>Закоммитьте изменения и отправьте их на удаленный репозиторий с помощью команды git push</li>" >> $v
		echo "</ol>" >> $v
		echo "<p>Rebase: </p>" >> $v
		echo "<ol>" >> $v
		echo "<li>Переключитесь на ветку master с помощью команды git checkout master</li>" >> $v
		echo "<li>Выполните команду git rebase develop, которая перенесет изменения из ветки develop на вершину ветки master</li>" >> $v
		echo "<li>Закоммитьте изменения и отправьте их на удаленный репозиторий с помощью команды git push</li>" >> $v
		echo "</ol>" >> $v
	fi
	if [[ $i -eq 41 ]]
	then
		echo "<p>Для чего нужна команда git commit --amend?</p>" >> $v
		echo "<p>Команда git commit --amend используется для изменения последнего коммита. Она позволяет добавить новые файлы или изменить сообщение коммита без создания нового коммита. Это полезно, если вы забыли включить какие-то файлы в предыдущий коммит или хотите исправить опечатку в сообщении коммита. Также эта команда может быть использована для объединения нескольких коммитов в один.</p>" >> $v
	fi
	if [[ $i -eq 42 ]]
	then
		echo "<p>Что такое Trunk-based development?</p>" >> $v
		echo "<p>Trunk-based development (TBD) - это подход к разработке программного обеспечения, при котором все разработчики работают в одной ветке (trunk) репозитория. В этом подходе вся разработка происходит в единой ветке, без создания дополнительных веток для различных задач или функциональности.</p>" >> $v
	fi
	if [[ $i -eq 43 ]]
	then
		echo "<p>Состояние репозитория ушло на много коммитов вперед. Как откатить весь репозиторий к определенному коммиту?</p>" >> $v
		echo "<p>Для отката всего репозитория к определенному коммиту можно использовать команду git reset с параметром –hard, указывающим на необходимый коммит.</p>" >> $v
	fi
	if [[ $i -eq 44 ]]
	then
		echo "<p>В репозиторий запушен коммит с изменениями в двух файлах. Как откатить изменения этого коммита?</p>" >> $v
		echo "<p>Использовать команду git revert <хеш коммита>, чтобы создать новый коммит, который отменяет изменения последнего коммита.  После этого необходимо запушить изменения в удаленный репозиторий с помощью команды git push origin <название ветки>.</p>" >> $v
	fi
	if [[ $i -eq 45 ]]
	then
		echo "<p>Что такое Docker? В чем отличие контейнера от образа?</p>" >> $v
		echo "<p>Docker - это открытая платформа для разработки, доставки и запуска приложений в контейнерах. Она позволяет упаковать приложение и все его зависимости в единую сущность - контейнер, который может быть запущен на любой совместимой с Docker системе.</p>" >> $v
		echo "<p>Контейнер - это изолированное окружение, в котором запускается приложение и все его зависимости. Он содержит только необходимые компоненты для работы приложения и использует общую операционную систему с хост-машиной. Контейнеры могут быть запущены на любой совместимой с Docker системе без необходимости установки дополнительных зависимостей.</p>" >> $v
		echo "<p>Образ - это шаблон для создания контейнера. Он содержит все необходимые компоненты и настройки для запуска приложения в контейнере. Образы могут быть использованы для создания нескольких контейнеров с одним и тем же приложением. Они также могут быть обновлены и распространены через Docker Hub или другие репозитории.</p>" >> $v
	fi
	if [[ $i -eq 46 ]]
	then
		echo "<p>Какие инструкции есть у Dockerfile?</p>" >> $v
		echo "<p>FROM - указывает базовый образ, на основе которого будет создан новый образ. RUN - выполняет команды внутри контейнера во время создания образа. COPY - копирует файлы и папки из локальной файловой системы в контейнер. WORKDIR - устанавливает рабочую директорию для следующих инструкций. ENV - устанавливает переменные окружения внутри контейнера. EXPOSE - указывает порты, которые должны быть открыты при запуске контейнера. CMD - определяет команду, которая будет выполнена при запуске контейнера.</p>" >> $v
	fi
	if [[ $i -eq 47 ]]
	then
		echo "<p>Чем отличается CMD от ENTRYPOINT в Dockerfile?</p>" >> $v
		echo "<p>В общем случае, ENTRYPOINT используется для установки основной команды, а CMD - для установки аргументов для этой команды. Например, если в ENTRYPOINT указан скрипт для запуска сервера, то в CMD можно указать порт, на котором должен работать сервер.</p>" >> $v
	fi
	if [[ $i -eq 48 ]]
	then
		echo "<p>Чем отличается COPY от ADD в Dockerfile?</p>" >> $v
		echo "<p>Основное отличие между ними заключается в том, что ADD имеет дополнительные функции, такие как автоматическое распаковывание архивов и загрузка файлов по URL. Однако, по сути, они обе выполняют одну и ту же задачу - копирование файлов.</p>" >> $v
	fi
	if [[ $i -eq 49 ]]
	then
		echo "<p>Какие есть best practices для написания Dockerfile?</p>" >> $v
		echo "<p>Использовать официальные базовые образы: Лучше всего использовать официальные базовые образы, такие как Ubuntu, Debian или Alpine, вместо создания своего собственного. Минимизировать количество слоев: Чем меньше слоев в образе, тем легче его поддерживать и обновлять. Использовать .dockerignore файл: Этот файл позволяет исключить ненужные файлы и директории из контекста сборки, что уменьшает размер образа. </p>" >> $v
	fi
	if [[ $i -eq 50 ]]
	then
		echo "<p>Какие типы сетевых драйверов используются в docker?</p>" >> $v
		echo "<p>Bridge: Самый распространенный тип сетевого драйвера, который создает виртуальную сеть и подключает контейнеры к этой сети. Host: Позволяет контейнеру использовать сетевые интерфейсы хоста вместо создания виртуальной сети. Overlay: Позволяет создавать виртуальные сети, которые могут объединять несколько хостов. Macvlan: Позволяет контейнерам иметь собственный MAC-адрес и быть частью физической сети. None: Создает контейнер без доступа к сети. Network plugins: Позволяют использовать сторонние плагины для настройки сетевых функций контейнера.</p>" >> $v
	fi
	if [[ $i -eq 51 ]]
	then
		echo "<p>Что такое эфемерные контейнеры?</p>" >> $v
		echo "<p>Эфемерные контейнеры - это контейнеры, которые создаются и используются только на короткий период времени для выполнения определенной задачи. Они могут быть запущены, выполнить свою функцию и затем удалены, чтобы освободить ресурсы. Это позволяет эффективно использовать ресурсы и улучшает масштабируемость приложений.</p>" >> $v
	fi
	echo "</body>" >> $v
done
