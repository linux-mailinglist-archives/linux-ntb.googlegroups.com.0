Return-Path: <linux-ntb+bncBCP3NC7J64FRBMWKRGNQMGQEN57O5KI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1236162D2
	for <lists+linux-ntb@lfdr.de>; Wed,  2 Nov 2022 13:40:21 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id l63-20020a639142000000b0046f5bbb7372sf9223044pge.23
        for <lists+linux-ntb@lfdr.de>; Wed, 02 Nov 2022 05:40:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1667392819; cv=pass;
        d=google.com; s=arc-20160816;
        b=wAgSRuve+hv3PESu3gyCseGN2z+naD9hpmKiPng2+srSmd0SppCswHLv0zdC+/hTCV
         14emuFDTLPiS0Zm4MmgDWBxiHB8yf2TUlpVFabbsW4eehS7pq3nxgQJU0KS1GGMM0K6W
         ImnxOJ0sdJ+/bAL6zQIhKxv30Ntbv6ZyEedmH+KuqLZOkbTzyh0AJwJ3fE++FEtP4WIW
         PM/aCi/goQLc8DZWTmm6OeDaP9DWODuVaMyGyDWL0BTi4Fg2BW5SLNqatHkLJVn1w5wb
         5WT79+inDrC1gHNwPNaTMb2ZboiVPRbtVk3jJLT2g4P8jXrfaE4kwW0md8EnS59bX2xq
         xfZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=Ne6Q7UIftjGeBxg8RUNLqLZwzeBEvL89nHIOo1KAG5w=;
        b=yLwT6GC5eldUZjA9HjWRk0gVhxfwyPtmsT2JFmzloF8m1eEHI2OXyjMdzY9b6HnM8v
         vBXchezYughsW5C7xLoXVFOZYNiM1GmNbgDLZtCnN8qy+Whddq9eaUQHG64r92L3zcSO
         qZzpPtKJ7lJmr0/8wDFUuGNH4mkMB/WDcQUgmIXOkDxDfxw/J0nzKlBiUn41T7TIAYBN
         z9gSGW4hdnSDWdfNF8osqeVBA2hqXkAKjGhqD905qyWEWtxIKPT1wB2rbdH7kBkur9T0
         kvTou4MFWau0DDSz7yZjCsbEB1LLkQXvP/Hs+p7NP4F6NXj5h/OR9ciKBuz+cW2nNY5T
         9UZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=LPntLWvb;
       spf=pass (google.com: domain of mrs.johannam82@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=mrs.johannam82@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Ne6Q7UIftjGeBxg8RUNLqLZwzeBEvL89nHIOo1KAG5w=;
        b=c0zBCeG1EObuSMpt0ysYSabbZYIGUUjljJULdZDGoC8IzZeMs2ZbdJOQI+M4QCLJpy
         FF2q1absXfyfpEhd84z378sgfz5ataEyHUBJ4ByOI5j6/BPwhsE20VL3B1qrcDcQGKQZ
         A/ogADFTbd5h3jAkZDO8YKjryts2Q5Z2uk1Ll6nz+Fl7o7mtP13wpuSVl4f7z11k9JAX
         WZdgl+1Cz3EVle5l6/+0bSFJ8iM2jVYj7OSrx50vtoEa/oFEyNUjy8rBFP7jMNT+6yTl
         GRKISBdve8pZjNqgzNeh7+gazXP5PuGyshl6lfvSql5cRjkd7fd7QCim6+52X6f2I868
         8drg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ne6Q7UIftjGeBxg8RUNLqLZwzeBEvL89nHIOo1KAG5w=;
        b=Cco1hc+hArYb7vyY+zCBV6UZeYckos5HseZILH9a7+U3aRNcW2Aug4aKATmquz1xOt
         Mer3Z+qi368UqpMfkVjGTTB11MyOZtC+fv75Qc7vjSQSHEsIZ0fasy2xAKrXxS3XvVTw
         CrBL0bTzkF5NuCFbkDYsDDatMiRs3HGl2AzhnjTMIB2hNNKLQaZ8IrvO2A+UXfcGT9C3
         3z3QIw7OeeL3/qesJX81NK+fkZaacrrTYXbFMcC4X8/EPrXyTONQ/Vp6BKNrgjxk16db
         K+evw/o3R4elbl32E3iwJqnoukXCXdGomE1W+aRhAnXVlVKebcDwMw76LxZQ2nAwJ31v
         Sxfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ne6Q7UIftjGeBxg8RUNLqLZwzeBEvL89nHIOo1KAG5w=;
        b=2X+Nwg2WS7978y54xx3k+QFMEqQBNwjUIvZOVGGsD5vIVLPLd4BlkI6TMsexwFO1OG
         EyCeXPCZd7yYAGUfY+EwMIlL5w/nICHvL3iRFgqtGYTGFEjqef3xp/VcADP0NJpU6CjC
         mW6Ehnsgz7GttiMrpREQy2Jp2tYZowOuz7lf4iV92NvyII50IFIdZ7wKdH/hmEMYoDZ9
         m0FxkLzd2NxdHNi58czXIWdDGkSg1HaaqejGxT3aZhLmS6ofVhYnlN2jd2F3ZHVokngI
         YqaJSnUWxbDcqvT1ahTNczzOeyEEh6t68qK906XB0GhGQn+LRiPYICg2aD0W8EaE55EB
         46Qg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ACrzQf2Xk6dA74vSW953lHcx8F6X+06dMs56FXcFkWPq1zlkA3fnIGZJ
	ARzF9RyLm5MQDSx+dlDopgU=
X-Google-Smtp-Source: AMsMyM6woQPHXL6EUDPMD3xrBAIf6heYI1U0KvuIwqKp4sFbCEiJ4uPm1BzS75rkEaX67ZXh5RowKA==
X-Received: by 2002:a17:902:ee81:b0:186:b1bf:2308 with SMTP id a1-20020a170902ee8100b00186b1bf2308mr24471387pld.111.1667392819235;
        Wed, 02 Nov 2022 05:40:19 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:ab05:b0:187:a99:41ab with SMTP id
 ik5-20020a170902ab0500b001870a9941abls8034326plb.0.-pod-prod-gmail; Wed, 02
 Nov 2022 05:40:18 -0700 (PDT)
X-Received: by 2002:a17:90a:b792:b0:214:2a4a:4bbc with SMTP id m18-20020a17090ab79200b002142a4a4bbcmr3946399pjr.81.1667392818117;
        Wed, 02 Nov 2022 05:40:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1667392818; cv=none;
        d=google.com; s=arc-20160816;
        b=vnp1sqoj6+WGIGGN3SsMABQu8yxMqr3zmSgWuM2UlCHYkRxSDCOr86LLdOkK49Paqu
         128O1iamJnZSSdIxdr922LguCAJbfmTBQz10U+O3U3xUvumfj/vgWxy8CPzqK5mhBht+
         t5yKcWx2V8mNGwt574rznkPf0cda5FBeFBboG8csQNjcWebQctaq8jjnxm9k1o+sVlaq
         UmPvZKKsiQkHT6/ZIzsolzhJRyz7FOAhwDm58Xhl4xfzSW1e8COvSbz/A+41LeWNJQlm
         yCE5RpDjhM/xZ4p6PSCVy12fPMQwlXJ345VfhQj5awyn3k68Ey0Rclfz8tG9ue6cCaIA
         jWhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=UlxU6ow7eTIM/A/2vGaXW1+xwd/axcZU18CR7p9o25E=;
        b=Qoj+i+gmERQdDIMzzQecEt1wHd514A/2t4chuDh001po2dueQvvOGQxyYBf6rrTLRC
         vN0yTttmePZjBQsXnvGvhBr3kjJ3jh4GYvjeCU9M6RzVrJV48pbbZPam6nxC99f6MXYN
         A1dzXrlUWtgVUZUIwzUB4mtrCGSft4SM1Z5euGK/wnS94SHpUJKBJzPhH1eRo6m1nVf3
         zr6KlW2GmnfA3flyOPmRaBLd8Py1VtXuRKXd7SIaiPuBKRnflD1MD04ZeeeqPSsxmbl8
         1LbIbd3MkPbCe6CSa+TnmRox2zbk2NSMluPXF4ZkynwgjkTroo3jWQmgNH9xFUBmE1y9
         dJPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=LPntLWvb;
       spf=pass (google.com: domain of mrs.johannam82@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=mrs.johannam82@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com. [2607:f8b0:4864:20::b34])
        by gmr-mx.google.com with ESMTPS id a14-20020a170902ecce00b0018734e1a0dcsi205603plh.0.2022.11.02.05.40.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 05:40:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of mrs.johannam82@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) client-ip=2607:f8b0:4864:20::b34;
Received: by mail-yb1-xb34.google.com with SMTP id r3so20985010yba.5
        for <linux-ntb@googlegroups.com>; Wed, 02 Nov 2022 05:40:18 -0700 (PDT)
X-Received: by 2002:a05:6902:1387:b0:6b7:c393:63d1 with SMTP id
 x7-20020a056902138700b006b7c39363d1mr23679777ybu.34.1667392817817; Wed, 02
 Nov 2022 05:40:17 -0700 (PDT)
MIME-Version: 1.0
From: "Mrs. Johanna Maaly Bob" <johannamaalybob01@gmail.com>
Date: Wed, 2 Nov 2022 12:40:02 +0000
Message-ID: <CAJKv08yoNjSHMYDe+6AS5bBySWK0q6cafYRpghvjxN6otjwn6w@mail.gmail.com>
Subject: Hello Dear,
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="0000000000009b77aa05ec7c2466"
X-Original-Sender: johannamaalybob01@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=LPntLWvb;       spf=pass
 (google.com: domain of mrs.johannam82@gmail.com designates
 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=mrs.johannam82@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000009b77aa05ec7c2466
Content-Type: text/plain; charset="UTF-8"

Hello Dear, I was wondering if you received my email a couple of Days ago?
I would like to have a personal discussion with you. Please give me a quick
reply.
Yours sincerely,
Mrs. Johanna Maaly Bob,

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAJKv08yoNjSHMYDe%2B6AS5bBySWK0q6cafYRpghvjxN6otjwn6w%40mail.gmail.com.

--0000000000009b77aa05ec7c2466
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Dear, I was wondering if you received my email a cou=
ple of Days ago?=C2=A0 I would like to have a personal discussion with you.=
 Please give me a quick reply.<br>Yours sincerely,<br>Mrs. Johanna Maaly Bo=
b,<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CAJKv08yoNjSHMYDe%2B6AS5bBySWK0q6cafYRpghvjxN6otjwn6w%=
40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goo=
gle.com/d/msgid/linux-ntb/CAJKv08yoNjSHMYDe%2B6AS5bBySWK0q6cafYRpghvjxN6otj=
wn6w%40mail.gmail.com</a>.<br />

--0000000000009b77aa05ec7c2466--
