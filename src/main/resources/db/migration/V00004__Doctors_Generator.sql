CREATE OR REPLACE FUNCTION getSpeciality() RETURNS INT AS
'
    SELECT id
    FROM specialities
    ORDER BY RANDOM()
    LIMIT 1;
' LANGUAGE SQL;

CREATE OR REPLACE FUNCTION getEducation() RETURNS VARCHAR AS
$$
DECLARE
    education VARCHAR[] := array [
        'Ивановский государственный медицинский институт',
        'Смоленский государственный медицинский институт',
        'Рязанский государственный медицинский университет',
        'Медицинский университет инноваций и развития',
        'Нижегородская государственная медицинская академия Федерального агентства по здравоохр. и социальному развитию',
        'Ярославская государственная медицинская академия',
        'Институт медицинского образования ФГБУ «НМИЦ им. В.А. Алмазова» Минздрава России',
        'Санкт-Петербургский государственный университет',
        'Московский государственный университет имени М.В. Ломоносова',
        'Балтийский федеральный университет имени Иммануила Канта',
        'Российский национальный исследовательский медицинский университет имени Н.И. Пирогова',
        'Первый Санкт-Петербургский государственный медицинский университет имени академика И. П. Павлова',
        'Уральский федеральный университет имени первого Президента России Б.Н. Ельцина',
        'Приволжский исследовательский медицинский университет Министерства здравоохранения Российской Федерации',
        'Воронежский государственный университет',
        'Красноярский государственный медицинский университет им. профессора В.Ф. Войно-Ясенецкого',
        'Новосибирский государственный медицинский университет',
        'Кировский государственный медицинский университет',
        'Ижевская государственная медицинская академия',
        'Ханты-Мансийская государственная медицинская академия',
        'Первый Московский государственный медицинский университет им. И.М.Сеченова',
        'Нижегородский государственный университет им. Н.И. Лобачевского',
        'Сыктывкарский государственный университет имени Питирима Сорокина',
        'Казанский государственный медицинский университет Министерства здравоохранения Российской Федерации',
        'Санкт-Петербургский государственный педиатрический медицинский университет',
        'Дальневосточный федеральный университет',
        'Нижегородская государственная медицинская академия'
        ];
BEGIN
    RETURN education[floor(random() * 27 + 1)];
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION getMaleName() RETURNS VARCHAR AS
$$
DECLARE
    firstName  VARCHAR[] := array [
        'Артем ',
        'Александр ',
        'Максим ',
        'Дмитрий ',
        'Матвей ',
        'Назар ',
        'Богдан ',
        'Марк ',
        'Владислав ',
        'Михаил ',
        'Владимир ',
        'Тимофей ',
        'Иван ',
        'Давид ',
        'Андрей ',
        'Роман '
        ];
    secondName VARCHAR[] := array [
        'Иванов ',
        'Смирнов ',
        'Кузнецов ',
        'Попов ',
        'Васильев ',
        'Петров ',
        'Соколов ',
        'Михайлов ',
        'Новиков ',
        'Федоров ',
        'Морозов ',
        'Волков ',
        'Алексеев ',
        'Лебедев ',
        'Семенов ',
        'Егоров '
        ];
    middleName VARCHAR[] := array [
        'Алексеевич',
        'Владимирович',
        'Егорович',
        'Леонидович',
        'Кириллович',
        'Олегович',
        'Матвеевич',
        'Павлович',
        'Петрович',
        'Романович',
        'Сергеевич',
        'Станиславович',
        'Антонович',
        'Иванович',
        'Дмитриевич',
        'Кириллович'
        ];
BEGIN
    RETURN concat(secondName[floor(random() * 16 + 1)], firstName[floor(random() * 16 + 1)],
                  middleName[floor(random() * 16 + 1)]);
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION getFemaleName() RETURNS VARCHAR AS
$$
DECLARE
    firstName  VARCHAR[] := array [
        'Анна ',
        'София ',
        'Виктория ',
        'Дарья ',
        'Анастасия ',
        'Мария ',
        'Вероника ',
        'Полина ',
        'Соломия ',
        'Ангелина ',
        'Злата ',
        'Ева ',
        'Варвара ',
        'Алиса ',
        'Александра ',
        'Милана ',
        'Арина ',
        'Дарина ',
        'Кира ',
        'Диана '
        ];
    secondName VARCHAR[] := array [
        'Иванова ',
        'Смирнова ',
        'Кузнецова ',
        'Попова ',
        'Васильева ',
        'Петрова ',
        'Соколова ',
        'Михайлова ',
        'Новикова ',
        'Фёдорова ',
        'Морозова ',
        'Волкова ',
        'Алексеева ',
        'Лебедева ',
        'Семёнова ',
        'Егорова ',
        'Павлова ',
        'Козлова ',
        'Степанова ',
        'Николаева '
        ];
    middleName VARCHAR[] := array [
        'Денисовна ',
        'Евгеньевна ',
        'Данииловна ',
        'Тимофей ',
        'Владиславовна ',
        'Игоревна ',
        'Владимировна ',
        'Павловна ',
        'Марковна ',
        'Константиновна ',
        'Тимуровна ',
        'Олеговна ',
        'Ярославовна ',
        'Антоновна ',
        'Николаевна ',
        'Глебовна ',
        'Савельевна ',
        'Вадимовна ',
        'Степановна ',
        'Юрьевна '
        ];
BEGIN
    RETURN concat(secondName[floor(random() * 20 + 1)], firstName[floor(random() * 20 + 1)],
                  middleName[floor(random() * 20 + 1)]);
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION getMalePhoto() RETURNS VARCHAR AS
$$
BEGIN
    RETURN (SELECT concat('/images/doctors/male_doctor_', floor(random() * 5 + 1), '.png'));
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION getFemalePhoto() RETURNS VARCHAR AS
$$
BEGIN
    RETURN (SELECT concat('/images/doctors/female_doctor_', floor(random() * 5 + 1), '.png'));
END
$$ LANGUAGE plpgsql;


DO
$$
    BEGIN
        FOR i IN 1..10001
            LOOP
                IF floor(random() * 2 + 1) = 1 THEN
                    INSERT INTO doctors(name, photo_path, education, speciality)
                    VALUES (getFemaleName(), getFemalePhoto(), getEducation(), getSpeciality());
                ELSE
                    INSERT INTO doctors(name, photo_path, education, speciality)
                    VALUES (getmaleName(), getMalePhoto(), getEducation(), getSpeciality());
                END IF;
            END LOOP;
    END
$$