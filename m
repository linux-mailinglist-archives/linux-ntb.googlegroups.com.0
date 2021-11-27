Return-Path: <linux-ntb+bncBCR7H2XVTYCBBI7QRGGQMGQEAEN3EZI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3204600ED
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 19:25:41 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id p4-20020aa7d304000000b003e7ef120a37sf10310355edq.16
        for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 10:25:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638037540; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y+ww+P2+y+1FIXzx2BrHA6wWxiXKIPx4GA8Vf+JWMJVV/QeHewgLdPyqypb5Wh+NfU
         I9VVOyp5Efaylsg+hJA4cHYw8A6v8Kex6S34Dz/f5WW1WN/uSMienIqLiblEOR7lY0mR
         kPtCx/YQ6gaTbBqFodIptU/eb6Z3RrZRzkiyWmELLxTHBavpEesDGA5nmIzTswPSxeH5
         YE97MkVgm9fYLmrUkq8yX35SjydvxLIKXim2sUBe4xd3ulWW2EvFG/6gyjNiEyXKdaB0
         8fyALAYcgTobnRXtlX51kSCUy0KGEcmL6HQEGC5qKnx7C0F5V+WB9XzT8h+x5rQF598Q
         iyFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:to
         :subject:message-id:date:from:sender:reply-to:mime-version
         :dkim-signature;
        bh=p3MrHDXUip5Q/PRQml/rlLbo31lxQpdYRFA8mRvICmI=;
        b=d3sr0t/7fJN8R9qjnAJezTKLtXeizDadtTjahZjH0pLxL1c2mc+gnTfIIYQbmW9EAQ
         ULoCU5/GCk29m7ocnCz8s/lvwP/ByRsg8q1+8DgB5wJ1AYTAJEnNRUiqs3+5encJU3wd
         QBySYhvmXiENSiKywlqZqSHq0CxQq3s2Ipmoj98SuwtnEWwPx468UUApeWIfHAkG94wI
         1nXHid/ok+KGjDfxd2ZiVgntJIuwyyJadqs9RBJBA41aVbKxHPfp3oX3/yFpLdDnEs26
         1p2EZquNiUfDBeRTAJ4OJoD3vVcS/x0orZS6zAVkLaZE+FBmu/z7oEbdxkeR6V5CBjus
         laqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=NpDgKnu7;
       spf=pass (google.com: domain of afringawa121@gmail.com designates 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=afringawa121@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:sender:from:date:message-id:subject:to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p3MrHDXUip5Q/PRQml/rlLbo31lxQpdYRFA8mRvICmI=;
        b=c+hPhtG7MQeoxLj+8ZrU6BzFoGFDmFtK49/meuVMlcDyoBZhglpA+UOAAeMxeqgnr0
         jQxEOVczI/xlFFKpxDlMVO348JMTArmWV9cpZhSq7kEpf38ieTFm+rTzpmYJSTqtrV4I
         tsjjDlZCIwcCbaxdB+K5djrbOVCG2Php88R0NhAqXkSPKVlfDt2FyDLJUT3mtqnCf727
         4/sKzuAA4cdg7Bbu3huh79Q2MPX4FPZDTBb9y8vzX35269EAq9LuVyOAKVTm/NheLyDG
         Lu0RTNCciOLCA6uh3qi1S1v4mKDaM71Y1jtqF65oAyl6VPG15rHgC5wmpc2ftD4W/Apt
         q3jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:sender:from:date
         :message-id:subject:to:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p3MrHDXUip5Q/PRQml/rlLbo31lxQpdYRFA8mRvICmI=;
        b=WMxiithS3f6ImiXSBUnAuHsEIk9talKBgy4Mb5qngDfA7d7q6042YDde0bsPzwbMvq
         IobUb0GuHtylFRD+5kE7DVUlhJ7WEOWt3USaPXE/QMD6mUCi2IyaXQAFQHkYhYyWuegD
         tybOYdrLXhY315O8ww0EV6gx+lVDTsgGk2x2J/cXNjW6k45nvUg4DCcUjTzrwBOV9oMW
         pFYMfqkXv8AoyMUMdRwY2V84Xm83GnhfsGKK+qRDnSVfqL3xYMm60jz2objbtSobJuTR
         iC6R4In+wh0k6YBOFO/NQ9TugqQ7HQxkMACgox4n0SxHUBNi4LOAp67wOfZQCe8KrxWF
         df+w==
X-Gm-Message-State: AOAM530gzv9J+ihwBpin1yz7b7gYuBk0vB9dOaiX52w63lDT6ewPpcl7
	FFCq4kvdqagmEjLh0EUD054=
X-Google-Smtp-Source: ABdhPJyHqAEQDHdbDrP5SGoL9Uu9f4MSVmILAM/hK9KRRs2+NoI1rejKqx3dJHgg/aaOEPnClnjGYg==
X-Received: by 2002:a05:6402:438a:: with SMTP id o10mr58039246edc.353.1638037540079;
        Sat, 27 Nov 2021 10:25:40 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:c98f:: with SMTP id c15ls1432043edt.0.gmail; Sat, 27 Nov
 2021 10:25:38 -0800 (PST)
X-Received: by 2002:a05:6402:1e93:: with SMTP id f19mr59178343edf.60.1638037538867;
        Sat, 27 Nov 2021 10:25:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638037538; cv=none;
        d=google.com; s=arc-20160816;
        b=xH9dQKZ4NWuQY0xWIWw7u8myaes4z2iri2pLqeOPmf6uJM+ZviFG3BKDgPaPIFepz2
         bGS1BtOHinZOOTYGxZEBE9Bf/rD7N3r4rjB0OWlmMERUcgUWYEKXz/opo/shwnNTEksW
         GR2mbFdYmDPlV3WhGaos/4iEHkN9bwWYDAuEqGAMNDF+TP4dwXzrWCQS0M0p3D1aFQTk
         ofXcCQTKh3ltq7+SttFyydnDtOGdIufmsrzE91z5ixANIOsClwh7+0wdj8rMwLIWtREj
         xrAQttahXrL8gXATJV+x+w4FPcU5PUHIMA6dlQDf9FKer7Crl7ZgrkSwTU94z3RStsVJ
         PYEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :reply-to:mime-version:dkim-signature;
        bh=nSnzgrxddn0odJ+F4Pm2LVSoEistsw4jHMhtjB6XfyM=;
        b=0y1XX04wkwujYQ1oqBFKUfNVqB5FAkWQfsYmE0t2gzyNyjENxrUimt0cy/rFHPUK4U
         WDqdGIHWAw/K+EMs/Bu+fKiTLf6UX5GAOIZEJgdsCb6td4Yo+EacIky3qhAzzXx56doQ
         iYt1R9FXsh0q7b39tShlfXbTBl/tHOPtd//PRgimrUAXXWhfYhexnP/tls+5w0kDshZ+
         kaCH0yHKRrVSFe4c5DDymBsBzVWrcNf1RzarEtNc4SQ4G78wSWGiIch+vZ1fq5M4Zi3U
         SrBJBUdbk6QjOnGFJi4Z25wATCSC5MlhFOacdHJjGn6lQs1K4+H7DUMP5o3sXvLohKxL
         WCGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=NpDgKnu7;
       spf=pass (google.com: domain of afringawa121@gmail.com designates 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=afringawa121@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com. [2a00:1450:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id e10si503815edz.5.2021.11.27.10.25.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Nov 2021 10:25:38 -0800 (PST)
Received-SPF: pass (google.com: domain of afringawa121@gmail.com designates 2a00:1450:4864:20::52d as permitted sender) client-ip=2a00:1450:4864:20::52d;
Received: by mail-ed1-x52d.google.com with SMTP id r11so52940746edd.9
        for <linux-ntb@googlegroups.com>; Sat, 27 Nov 2021 10:25:38 -0800 (PST)
X-Received: by 2002:a05:6402:3590:: with SMTP id y16mr58552824edc.343.1638037538532;
 Sat, 27 Nov 2021 10:25:38 -0800 (PST)
MIME-Version: 1.0
Reply-To: gen.ireneduncan@gmail.com
Sender: afringawa121@gmail.com
Received: by 2002:a17:907:7da4:0:0:0:0 with HTTP; Sat, 27 Nov 2021 10:25:38
 -0800 (PST)
From: Irene Duncan <gn.ireneduncan@gmail.com>
Date: Sat, 27 Nov 2021 19:25:38 +0100
Message-ID: <CAG1-aHHNtBchMQU=uErGiZtn59XN5-8fmbXi-GFPE8i6g-B48A@mail.gmail.com>
Subject: With due respect
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: gn.ireneduncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=NpDgKnu7;       spf=pass
 (google.com: domain of afringawa121@gmail.com designates 2a00:1450:4864:20::52d
 as permitted sender) smtp.mailfrom=afringawa121@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hello,

I am General Irene Duncan from the USA working in the US Army but
presently in Syria for a peacekeeping mission, I sincerely apologize
for intruding into your privacy. I have something very important to
discuss with you.

Some money in various currencies where discovered in barrels at a farm
house in the middle East during a rescue operation in Iraq War and it
was agreed by Sergeant Kenneth Buff and myself that some part of these
money be shared between us, I was given a total of ($5 Million US
Dollars) as my own share , I kept this money in a security company for
a long while now which i declared and deposit as my personal and
family treasure and it has been secured and protected for years now
with the security company.

Now, the WAR in Iraq is over, and all possible problems that could
have emanated from the shared money has been totally cleaned up and
all files closed, all what was discovered in the Middle East is no
more discussed, i am ready to retire from active services by the end
of next month, but, i need a trustworthy person that can help me take
possession of this funds and keep it safe while i work on my
retirement letter to join you so that we could discuss possible
business partnership together with the money.

I'll tell you what! No compensation can make up for the risk we are
taking with our lives.

I=E2=80=99m seeking your kind assistance to move the sum of US$5 Million
Dollars to you as long as you will assure me that the money will be
safe in your care until I complete my service here in (Syria ) before
the end of next month.

The most important thing is; =E2=80=9CCan I Trust you=E2=80=9D?As an office=
r on ACTIVE
DUTY I am not allowed to have access to money, therefore, I have
declared the content of the consignment as personal and my treasure. I
would like to deliver to you. You will be rewarded with 30% of this
funds for your assistance, all that I require is your mutual trust
between us. Don't betray me when you receive the consignment.

Sincerely,
General Irene Duncan

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CAG1-aHHNtBchMQU%3DuErGiZtn59XN5-8fmbXi-GFPE8i6g-B48A%40mail.gmai=
l.com.
