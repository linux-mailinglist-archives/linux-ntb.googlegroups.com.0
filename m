Return-Path: <linux-ntb+bncBAABBHMORKAQMGQEEFP67UA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5344D314F98
	for <lists+linux-ntb@lfdr.de>; Tue,  9 Feb 2021 13:59:11 +0100 (CET)
Received: by mail-oo1-xc3c.google.com with SMTP id v42sf9452275ooi.4
        for <lists+linux-ntb@lfdr.de>; Tue, 09 Feb 2021 04:59:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612875550; cv=pass;
        d=google.com; s=arc-20160816;
        b=CoxhQvwF+XvlYryb6JsFjr0+Ha769sUrLUJBp2NlwYoD4OqUZGR3v0MLfyc298M4s5
         WiwDt5oKTvVdUSndL3tHXgPDhHqRfq2wGn6//mgMI/SToESxnD8FOPMU9BDUwV5gX6hu
         LxBYE61ifwsfz1kCJ5lKgxYGmWcRev1cWKeCke1m7djSR71AY/F9vjSTJmbJ9lCImnHc
         2kGz5LNaHv49UgyiD7oYxibl51N2oSrD9sNuDAK+g6+vnZx4nUqZU/znYn0oClFC3dTK
         C8g3Gi+6BCyLH1phHmjLSBa/uoeBUhPqknTwqihOHecKXdlyCKGjUkZ7GRNXuAm12f0g
         0ccQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:date
         :reply-to:to:subject:from:message-id:mime-version:sender
         :dkim-signature;
        bh=Ff7JgV2Bljk2F491eiBc4F/a8ZGlNeLhfwgaDaO04Eo=;
        b=VPe8/UC+S0NH5Yqaq74kOcxAgwAKJ5D/4V/mIeSxVNFxe3VgVgH+fkfqose5HktEAO
         anbmRW896+tQOb/PGcuxcPTWCsjiyw8/GaMFLikOloEQzgYYF1A3rxizFeT1ncdlHimY
         314ooiGxrQmtxcg+v3eXDBtpXcyAQTHxQHIl/OMX/5mksfaNMcG2RYs08zvdiKIO4m1E
         7QIL9XqI6hf+UlKehZN2/0Rt36Jtaft+I1NvpojyG+30QMTNX6V0oegwJMJZCzvYsZsR
         WAzKQyIjnDsAJTfr1tZpR7IkGBGobluDO1UVtO+tyvcO6Sd8LJA2EIqPHnak06FTOUcW
         PsRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dkim.uni5.net header.s=uni51 header.b=BlazHF1D;
       spf=neutral (google.com: 177.185.203.13 is neither permitted nor denied by domain of geovana@grupocompal.com.br) smtp.mailfrom=geovana@grupocompal.com.br
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:message-id:from:subject:to:reply-to:date
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ff7JgV2Bljk2F491eiBc4F/a8ZGlNeLhfwgaDaO04Eo=;
        b=Mi31KiTl0qS9VAeOLLElmGkePcQwEhgZ6XCQ+yKGFRBXgBwHcAZ1dUyn62Lj4tYL5v
         MXFFlwJk9tIunKh0nLvuZPICOlZYNXWFWXbd1jqOWy8/K2coVFGFUvdgJLrMwNMVg7RZ
         m9RWi4yYI02PknSTHrxcFH77zz6o/657DNOOZ/eEDCnzJRpLuAsIDJBVq4JBElJNvZmO
         gG1jmFGffmidDRQaZ/K24oopWWF9YkZo40YMxduXBcS0PAlwwIJV7aBaNdH/jAu4BxhK
         HYHCluvqcnhbjkolobs0m4/hGYkcNfbV7bzZMBVJzAuPdtaF5Wy/hvOeNFqT7cpLP3zZ
         cSKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:message-id:from:subject:to
         :reply-to:date:x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ff7JgV2Bljk2F491eiBc4F/a8ZGlNeLhfwgaDaO04Eo=;
        b=eEbVGGU4QgOPEizg8sZ9D5Kqgom/AppL+fadcED2YWO08j7eGvF357zzHQLqjaeGML
         GaaJMhzZhmoInEGZmJndxEvJhG92cj2RvzeXnS8QkRLIzxpKvpHinW2EQMi5+UaFDRe0
         pnvHm/+IOW1Q2tO1DNIJjLKSiiRTQ6XMODM+Db1f7u1L9HoIE6eEwHk7B/JV0NLr/m7v
         blgj8Qnd52qdfx0jUA32z6K+pt0tdGD27DOkuyIwYuFJLawJoJnSnbccRF8GkyXh5DAu
         lApCuFNnua5neI94WWFcQOwM2g/5MS2rrx8oQeJrEi9xr3hwnRlIYA4A793Y2rJKvlaQ
         rYQg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533aCFZTrRKJxbfyqYNgsVWbD/VjWdVC/yNnB7Q11D2ri5yxwa8a
	OQSyAbokAsBi5cNkqjea1bA=
X-Google-Smtp-Source: ABdhPJwCgxOIfcTJ7LBxpaXVVerCOFfNmChBG4pOoIcwZhOdV9CYVnLnzIVRXf5hQTaVJjeqb/TJAA==
X-Received: by 2002:a9d:7d15:: with SMTP id v21mr3554319otn.1.1612875550347;
        Tue, 09 Feb 2021 04:59:10 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:53c4:: with SMTP id i4ls1910929oth.1.gmail; Tue, 09 Feb
 2021 04:59:09 -0800 (PST)
X-Received: by 2002:a9d:6393:: with SMTP id w19mr13387126otk.99.1612875549606;
        Tue, 09 Feb 2021 04:59:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612875549; cv=none;
        d=google.com; s=arc-20160816;
        b=MBMnQyTZjwr/FFfpYCYptFsMHJYGAGXngl0tQQPUsy4bpdrpcwPGRZEcPwd7gdCLRZ
         EvzD7pGv/2n4Ti44/Pc7LgUZTAdKQeBORLRFUfTMBUqnOV9az954WspIUCPvNsD1ZX1A
         KYVHBhVB5vDlSh8pZBbn65JGs8WFBmk0D28tesP9xj0MoaTAbubFoliIXdFUsNH65PdP
         hf3zkOD7DG00AduulsdAbUAMck1lBlOIDjnPjq9Cwz9wgWWmsGF3jz9uoROAjGVvqv4u
         H3/TNjdMu0MFQ0eeW80qqteVAZm0OrS62t/yfbhm5iQqRyA0QD3s81VNjSTO9SngRzvV
         fH6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:reply-to:to:subject:from:dkim-signature:message-id;
        bh=dI983n4UnQAI77x+jVtLnUaU0ltaS5ihGYGGI6DlXek=;
        b=BoLItoWN7fQaHLbqezmZ95goAYEBCFeOblKtd6sPKvXeh5BV4WrYfjvk+JoFJZWslU
         9f5H+DihMvqs1TyYcRvcxAXy/D5P1Stu3w+aNgPv4WpQ5X72CRj6ZMx8QAeDFzrrxHVn
         Rlzvdcu4Pi3a6xLTYLf3cYOXDQCpYn+HDPUoo2mkDx8Zyx4zSqLUBYLAvSoojj5ObOyd
         35Z2T2gCMqRccnWJc8UT7/dmlQLko0FmaJxtYceFb+guZvF6pE911/Y2vKJikCO2jsdX
         GgbzNnfka8fBP8AeM6TC9IxPv1THFLIaSJgrN0elfNgMY2F26OlhNqWBlmKacFLj46iE
         0m7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dkim.uni5.net header.s=uni51 header.b=BlazHF1D;
       spf=neutral (google.com: 177.185.203.13 is neither permitted nor denied by domain of geovana@grupocompal.com.br) smtp.mailfrom=geovana@grupocompal.com.br
Received: from smtp-sp203-13.hospedagem.net (smtp-sp203-13.hospedagem.net. [177.185.203.13])
        by gmr-mx.google.com with ESMTPS id b11si1006237otq.0.2021.02.09.04.59.08
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 04:59:08 -0800 (PST)
Received-SPF: neutral (google.com: 177.185.203.13 is neither permitted nor denied by domain of geovana@grupocompal.com.br) client-ip=177.185.203.13;
Message-ID: <6022871c.1c69fb81.3d759.98ecSMTPIN_ADDED_MISSING@gmr-mx.google.com>
Received: from DESKTOP-PP3A8MN (170-80-135-106.iubtelecom.net.br [170.80.135.106])
	(Authenticated sender: geovana@grupocompal.com.br)
	by smtp-sp203-13.hospedagem.net (Postfix) with ESMTPA id B523B604318A
	for <linux-ntb@googlegroups.com>; Tue,  9 Feb 2021 09:59:04 -0300 (-03)
From: "Geovana Namioka" <geovana@grupocompal.com.br>
Subject: Nota gerada 00001347732500%
To: linux-ntb@googlegroups.com
Content-Type: text/html; charset="UTF-8"
Reply-To: geovana@grupocompal.com.br
Date: Tue, 9 Feb 2021 09:59:05 -0300
X-SND-ID: AHCa34u4GtUmNNqg86z62VBPVp1MISwUP5JHnZABVayp3Glmow82vv4u45Ck
	t7GtH49PgDMJDueNaGhwsp4e9jYtTG4qwOtAQ2ZQByYsKlV36HksABXUROYW
	nXvWjwWnCOoWPWOIySTKBXQ5z7Vg9a6PUHAIjrs5tyacJpWunM9CZrmogQu7
	AuOdQsI9rFp5yT2nrrHKnPEPvhEsMpxkgwlWJOJYLDNXLpjsJP4h+F7HwHwZ
	Ob7pVSfT7EWg2MOEgArxxAixGQ8uqHTtyfJhWVzE6pvXI63M7ekIdijtIlWh
	RJCUQomi0WB3Ob97RKxkPOWtCnlm21vQ8dXrZw96xoNxhBvY1BLZ8qPtmAI7
	80bJR86TjP+CFnvLUKvHJMf7k4oxw0dCx2iZjxqSEx6FgbHqp54mwQ7i8Tr8
	VLMkGls7q/7HpUJ4oDDCvXP02UJnOQA3JkFJVZmHtr0686SZYlZosGJrjsPN
	QZM4j4WAnQL7mLh4x48hqGUmA5BhW6v3
X-Original-Sender: geovana@grupocompal.com.br
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dkim.uni5.net header.s=uni51 header.b=BlazHF1D;       spf=neutral
 (google.com: 177.185.203.13 is neither permitted nor denied by domain of
 geovana@grupocompal.com.br) smtp.mailfrom=geovana@grupocompal.com.br
Content-Transfer-Encoding: quoted-printable
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

<p>&nbsp;</p>
<p><a title=3D"000013477325000013477325059671906" href=3D"https://is.gd/eKK=
3rX?000013477325000013477325059671906" target=3D"_blank" rel=3D"noopener">h=
ttps://www.nfe.fazenda.gov.br/portal/nfe?Consulta=3D0000134773250013477325<=
/a></p>
<p>&nbsp;</p>
<p>NFSe emitida</p>
<p>&nbsp;</p>
<p>Nota Fiscal Eletr&ocirc;nica : 13477325<br />CCM : 0678<br />Chave de ac=
esso : 134773250000000596719061347732500059671906</p>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/6022871c.1c69fb81.3d759.98ecSMTPIN_ADDED_MISSING%40gmr=
-mx.google.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.googl=
e.com/d/msgid/linux-ntb/6022871c.1c69fb81.3d759.98ecSMTPIN_ADDED_MISSING%40=
gmr-mx.google.com</a>.<br />
