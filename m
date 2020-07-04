Return-Path: <linux-ntb+bncBAABBPHEQH4AKGQEIO3HU2I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 173B92145BE
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 14:12:46 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id f132sf23091064pfa.0
        for <lists+linux-ntb@lfdr.de>; Sat, 04 Jul 2020 05:12:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593864764; cv=pass;
        d=google.com; s=arc-20160816;
        b=D1T/+P6cL5/9LjMqd/2xvzjUQ0Ce25nhJX3LqcEjrp1obZbq/2RGgFLARt49CydMYd
         D3HdGmD4yswVOFjK0wTfeufjigcUGasCgujI/65kM5nsr+KG6zAULdfvjQQIaCpPe6+y
         OAA2/f091ZlW0yJkkQRP1/AwJIiyhZTqukfn4OhM1SCcHpB8S7yvka0x0xCyA0JeueLn
         Oq96B/Ocr8KVOSaljaH1ersbVpVoKqRzB7LUX6O/UGy7bLrDgjZF2XZYMNQpPrqxf4Nq
         PowUA4TsT+ZnY9Gt/BOfzlQKDDtzm1tkXE+0LcpdQvAMfvvMF7MfBRRvo/VIpPViz4zd
         ddpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references
         :content-transfer-encoding:mime-version:subject:message-id:reply-to
         :from:date:dkim-signature;
        bh=mz0iiBycFRwlpFbnmq6NFRIVGJlp++o/YtiNpRXzS1E=;
        b=eBVoFpzmph/94enqqEQ/y/JJS6xarlMl/9Wvxy8a3tuESUkAfJcKbspzbTQFH1uDhy
         fmP2ReFEPRwR8ohWpH3O8eXZKJUjooHDoFU5/6YljME5xrOL7TuyIHUMeGMN1OXxMKdm
         X47wCgcqsnC8IVrUi1j2UPT6+sEiE5nMuwQGJiVrhhS0Es60GGSeaQOU6vHWuSKG6vRm
         b01ZrFnFcO6U/kdeMiar97BQKoT0ojgqtMSTRwzenAdf2iqbCY3/Wza8JhQhiQFrqb+j
         1SV6cEdTBZ/KDH1cC7xCh0V5fWYzpD/iskuMmnvnLa2cGaenPg4dH04oDQiXRUUNqc25
         HlqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=h65RjdQV;
       spf=pass (google.com: domain of s.cyprian12@yahoo.com designates 66.163.187.146 as permitted sender) smtp.mailfrom=s.cyprian12@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:reply-to:message-id:subject:mime-version
         :content-transfer-encoding:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mz0iiBycFRwlpFbnmq6NFRIVGJlp++o/YtiNpRXzS1E=;
        b=aWJd3FDtLrGLuhdEhMvhmHC/QzEsCKR8oKUhQXTUlnQ+uG1O+peefojF5hqK+u4C+J
         zlh/MUQDUu/VvxDPpUK5p/wQILvsr4Hrfs6Ag0c9lkgx0qJUNypZKgXD3P8eLXIxy/G3
         aFVoCy8bGQnqjG1K+10U3LqwtzIDF6pA52oaV+5MVhKdrjTW1jsoQtcGGznjANG5faSl
         ajrPnj1XsJUnvipa60av90l2catDvosQ+8IiARYIBDjwuSgWP1zH8VuqAUH3WqT/PAPU
         Qb6NpK3wZ0GtTojd/hqjnKNEYCrXEDgACu63hEdiXjPGsmFusLb1EqwCy1YKcR3RmALC
         1cyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:reply-to:message-id:subject
         :mime-version:content-transfer-encoding:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mz0iiBycFRwlpFbnmq6NFRIVGJlp++o/YtiNpRXzS1E=;
        b=Hv1/hRvW1pUidPJRCqlYsazQTdEWQ3rJYlHQ4lriVrQpOw1KbSvT1VpEfG/25bWy91
         jRoAoU/hn0V/7k6AB7zSZ1mIMT5AJQvcDzXmyRuI10aHMRM9l4N6u9QrOorW3TUUrQ6b
         t0FT4vNz4rBEFo6ANQ9FToyyS3FmdeyM25U9BhW8SQvRZmx7A1YwpUdq6G9Lx90IoVSH
         6lLwG5Ux7xjzEWlomv8WIu3SRto2pKE8B+DQkJpiZ4+vkHsWGqXHD+qg/4AGHSZkCYZ2
         t98LSnifGUdY+y21JGsPwsRxFMROFWeXFt62YLWgSw193QZQuPAkg8YfRatn+qkxROT/
         XyFg==
X-Gm-Message-State: AOAM531gr81X2BN+/+ycW/ldPAckBx6iZMd2BB86rHnssaIDV0jMORV5
	VgH6iWWA8D50KXegSQZbPJ8=
X-Google-Smtp-Source: ABdhPJyhJcfKxmxQsLbETEgxVfevCvHBblJu1+nBX7LqESXysNXl0j1lRuNZSAQdu6FpKBwPO6zy9g==
X-Received: by 2002:a17:902:8b8a:: with SMTP id ay10mr35631464plb.236.1593864764683;
        Sat, 04 Jul 2020 05:12:44 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:9007:: with SMTP id a7ls4301325plp.3.gmail; Sat, 04
 Jul 2020 05:12:44 -0700 (PDT)
X-Received: by 2002:a17:902:934a:: with SMTP id g10mr23727050plp.83.1593864764395;
        Sat, 04 Jul 2020 05:12:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593864764; cv=none;
        d=google.com; s=arc-20160816;
        b=mpL3S/4A1Bd9NKPDufgTQmUfbeyKyu7cTxgS4opKwwf/Pj4z32/wqm41xtCm4e9pN0
         VCsksOG/SHyexx6zHpehtXBN7nXZknqgrXAHH8odJJflTCcUa3DGPsvISOffTCpy9Q0C
         /LNAlYgMhS+6qXqJwXcr5kog7v8sxB9DJShUuCApt9vkdw1dxXESw5wy7akOjRNNl3A5
         izhqRR4OUDQyrw2AmdiazLxD11fujrgdXZZkiAYDY6SRyukhkyg3n2tQL2kpQD+t3WHl
         mSpQwvyTaBS7jRZL+ERlenjLJxn1MQ4Dlq3CGNaXbYEei0Xf5hfkVLQ20AwXT+viuyT7
         ZtzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:content-transfer-encoding:mime-version:subject
         :message-id:reply-to:from:date:dkim-signature;
        bh=SC5Gkorl0I1Yyh4irmvyjj3rLQH+q1rIKj2g+9rAurE=;
        b=cmD/mRxBcuHxA6AceaalTrHmh2WQjN1LeZ9/IrK7apgU9Ihu+5SYYQqRzMOa2fq+Q3
         WMmgFM0TSzHKL6y9v+8/C48jnQ0edcGAJMYxUxv9oqOxmB489qEMmK2ourvl5gFCvqCE
         bX9jus1ojYTo95yYfpahnIMyg+bqMIociRQ5Mot4p1eyJBtAum6AQFxrhFIPVlZm+GL7
         yUJSfjD7B8p/3acWo2EZiLfZSSxZ2obZ64lnb2eIJCLtTrAmT5KxuVGtnfObv8Ub29Ou
         MZFHLevUemIJj9+xw5AcfofhOR1l7QEb44iW+BrGHuFlgie77O20pUDrbksIydrOGzdi
         vXcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=h65RjdQV;
       spf=pass (google.com: domain of s.cyprian12@yahoo.com designates 66.163.187.146 as permitted sender) smtp.mailfrom=s.cyprian12@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Received: from sonic316-20.consmr.mail.ne1.yahoo.com (sonic316-20.consmr.mail.ne1.yahoo.com. [66.163.187.146])
        by gmr-mx.google.com with ESMTPS id mz9si945295pjb.3.2020.07.04.05.12.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Jul 2020 05:12:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of s.cyprian12@yahoo.com designates 66.163.187.146 as permitted sender) client-ip=66.163.187.146;
X-YMail-OSG: IRcdVJwVM1k.oBU6ROmNn.qa2MweHXltf1QH4EmfSw6r1q3QU9ldZxgESlbLUOc
 B203aUyycgEm46E.8slVAbAH75eqQHJ6QXsn6IqALMJsRXyPO0aQJ0HXnwd66.luwnn3f3qpaHjZ
 QYdDodRUScO1K5vOGREx9GZeYVktgoj3KJdxKph92A1Yesv1UIeQVcqfL0eRbF4AqHWeZuBhzq91
 MXq.iA.dkBrCxjy28qyEiSJIzekS7Sp4wIquQszubJwaxdC2xRZ5iI_H5m.z5DqZlKqiSW2_4x3P
 h6uhR10eAxhRZCJ5oDVePzIWhKytKm8gwWwgLJUIrh_SzCqX9Cnhf.0n_kqwnbKRZSnB9KPqxFeF
 6dvHeSFNrWkSh9urqKX4sFjLS_U5zlymZqgzUvXLXg_lEmpERbJOO8z5c_ps92rgMcbXmebluJjm
 yMjJYTBZaRWAcZMvb8ll7.Y.PjKONc_V0AKBX9bD8pir_d6lIsAZQM..OQOJAfoMtjzxTBBs60bZ
 VHBKhpmoUoKiclwpwRbT_YrDQ._fU1_RFOtNUx7Y2oS5fB3UJ4W4cja2KJtqEL9I6h4Loh3EXzA6
 rxDRBgKPG478YNsIKiN964H.NmOm6.QCoASXPhgvb6Hl5CSCScrl4o0zje0ejq1MI1ePuiE_W6nC
 J6vGOQ6_nwEjD3xp2Jc.WFcPZ8Ve7dODy7Az.UPx0W5hXZxxG4kpPO3mexeBrAXBf35evM.WQiEw
 uMyrLFT6YJYAdUyfehwn.Bh5ahAmCf.cvKABjMF1uuxoaEKAwZ1CKhfj0p.kuopKumf_c.VeoHUG
 q23RFAom4exKU1GOTZpQUx9FeBziWOPrQjYwtuspiVcE.s4BNDLp_ECGVBOa781QN_MCiQIOSzJ2
 EupN2q_I5q.L8meT5gy58IUg1.WUhesTvLBDkfFYJV6QVxdmdUAc5utMjDaXeuEJNeICSeJXQT1r
 Fe2ve9JiUc9JT6LWUUzaKTig_21iNIJeQKm3Di9Y.4jcQhSmm_HV_KUt1gRA3MQS29Y.jmnosQqw
 5LAHm0aWp1p3.LdZFuozM2sMvpNnVKNgXNEg7o4uBxFWSY8CAvi5NO0LApQmYitjfCld.ZW_oNwn
 pwz0AaiRFZFtrmjAZsuV89PxbQonESMHHBa97xVjipLmhCGOcIxdu7_KKUGiseBgT7NbC_MxllI4
 r2dAIEIqQH3RdXoRNtzUqR84YWkCU2Bd_l.JwgCDaZCvfHcBmabhVm0gRoNUMoeBxNZKkQu6VreV
 93UTqrkXncZSHzhJ8wDWSqDo0k9ZX22yArNE2qrNhWEPFY0f7A7N7SWusBSHcVdiJKibz9y8FN..
 S
Received: from sonic.gate.mail.ne1.yahoo.com by sonic316.consmr.mail.ne1.yahoo.com with HTTP; Sat, 4 Jul 2020 12:12:43 +0000
Date: Sat, 4 Jul 2020 12:12:39 +0000 (UTC)
From: "'Cyprian Sunny' via linux-ntb" <linux-ntb@googlegroups.com>
Reply-To: s.cyprian12@yahoo.com
Message-ID: <1739424868.2393235.1593864759629@mail.yahoo.com>
Subject: My dear friend,  I wish you a safe and happy Independence Day
 celebration.
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
References: <1739424868.2393235.1593864759629.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16197 YMailNodin Mozilla/5.0 (Windows NT 6.1; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36
X-Original-Sender: s.cyprian12@yahoo.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@yahoo.com header.s=s2048 header.b=h65RjdQV;       spf=pass
 (google.com: domain of s.cyprian12@yahoo.com designates 66.163.187.146 as
 permitted sender) smtp.mailfrom=s.cyprian12@yahoo.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
X-Original-From: Cyprian Sunny <s.cyprian12@yahoo.com>
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

Greetings my dear friend,

I presume you're doing alright with members of your family? I want to use t=
his opportunity to wish you a happy independence=C2=A0day celebration as th=
e United States celebrates independence today. Although I've not been to th=
e United States=C2=A0before, I love=C2=A0 American people and that's why I =
want to wish you a happy celebration on this great event. I am wishing you =
and your family the best the nation has to offer as you celebrate your coun=
try's independence.

I am an Amcanophile because I'm=C2=A0sickeningly obsessed with American cul=
ture.I also salute the great men and women of America who made this possibl=
e. Happy Independence Day. God bless you and bless the=C2=A0USA..

Do have a great day.

Best Regards,
Cyprian Sunny

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/1739424868.2393235.1593864759629%40mail.yahoo.com.
