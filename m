Return-Path: <linux-ntb+bncBDYLTH7R3UCRB2F74L6AKGQEZWIXTHA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 681CE29CBF9
	for <lists+linux-ntb@lfdr.de>; Tue, 27 Oct 2020 23:32:09 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id q15sf1803130qkq.23
        for <lists+linux-ntb@lfdr.de>; Tue, 27 Oct 2020 15:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V77pp6x5v8FBPA+ICWmPlNrvcUC/dnJsysiYNDpYKtI=;
        b=so77pCty9AWBMNSVXJF6W8Gzo2u8bYjR8FcGIN/Ftawkg1nMgFwabJnyyXmCdWlgp0
         nMNQM8+kGnokrSUkWmSx/i2v7Z5Ba7qrjytfr6U5THoTfF8vzPjD3BTH5ivySxdA29un
         tkseXvQ9qcdEtVAsDYPcXsB4rV0xQ1GxMW1kFloATbfGE6v1e+jhXwWDzIhWVWHnx/oB
         UqhpiYmAFQtXXo1SH6EFGeKu2NbZer/KlETFeOnk2D9tV00u22l5Z/FJ+ZhfjLpevpkc
         hxkwiHYFdQDKWkEDGj0uFhJhhOtbar2ucUcm6jm/i+FRgkYltyesX9UdFSLE6LlrGAA0
         fIJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V77pp6x5v8FBPA+ICWmPlNrvcUC/dnJsysiYNDpYKtI=;
        b=O/nBu88iA0lif6sJ1zluAzZt75VsySJ2FrnQwYAxhnIuYBowuJ0ioPHIZTKVRRVlCv
         ILV85hirFtcgNKBY8usys2dkJIiCNiQx+cxdcfEK97gHusLej4UmIfLyC+9C3iEqG6eL
         1IMGBUBQ1md8bH1bgI6yJjU1eYaH8/FpAAW5rW8pNEsG7FV9Aszp2Fsp2eryini+w9X3
         VYxabXE5ckJMAF/1dgYQ23qUOPWrHxOPUybarQLcBN6tEjU5YtAtKEElNjp5qbg8oH2l
         oHneHaoZaZz4D6b9B0pY4YIhE4WMG5EYW0hUJK8Dzwvh+UlfiSWyAFCEGR0Dd4jb+syZ
         EsYg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530REIc7VrCUi9N3Y/QfHwx2H2+2640JkeKp4tZ1N1qP/bvjgdvw
	zJQ5WuK4p1+dEIG07DMQ8ns=
X-Google-Smtp-Source: ABdhPJxe90NQKMNMi14rUDhx2q116HnlQbuWT9loDxaKl5xxi/kj9F/M/933TKk99H3A46aRxas8sw==
X-Received: by 2002:a0c:e250:: with SMTP id x16mr4684436qvl.1.1603837928120;
        Tue, 27 Oct 2020 15:32:08 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:3845:: with SMTP id r5ls1175592qtb.3.gmail; Tue, 27 Oct
 2020 15:32:07 -0700 (PDT)
X-Received: by 2002:ac8:5386:: with SMTP id x6mr4556193qtp.50.1603837927510;
        Tue, 27 Oct 2020 15:32:07 -0700 (PDT)
Date: Tue, 27 Oct 2020 15:32:06 -0700 (PDT)
From: Gera Kazakov <gera.kazakov@liqid.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <479fb8a5-e3e9-4cd9-a084-7a18a2bac57dn@googlegroups.com>
Subject: ntb_unregister_device problem
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_214_1691689788.1603837926607"
X-Original-Sender: gera.kazakov@liqid.com
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

------=_Part_214_1691689788.1603837926607
Content-Type: multipart/alternative; 
	boundary="----=_Part_215_1205169160.1603837926607"

------=_Part_215_1205169160.1603837926607
Content-Type: text/plain; charset="UTF-8"

I noticed that when I call ntb_unregister_device from my HW driver for NTB, 
the ntb_transport emits this message:

ntb_transport 0000:0b:00.0: ntb_netdev0 still attached to bus, removing

The network interface disappears however something is left behind. On 
subsequent call to ntb_register_device I get:

debugfs: Directory '0000:0b:00.0' with parent 'ntb_transport' already 
present!

No network device gets created. To fix I have to reload the ntb_transport 
and ntb_netdev modules.
Am I missing something in HW device unregistration sequence?

Thank you.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/479fb8a5-e3e9-4cd9-a084-7a18a2bac57dn%40googlegroups.com.

------=_Part_215_1205169160.1603837926607
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I noticed that when I call ntb_unregister_device from my HW driver for NTB,=
 the ntb_transport emits this message:<div><br></div><div><font face=3D"Cou=
rier New">ntb_transport 0000:0b:00.0: ntb_netdev0 still attached to bus, re=
moving</font><br></div><div><br></div><div>The network interface disappears=
 however something is left behind. On subsequent call to ntb_register_devic=
e I get:</div><div><br></div><div><font face=3D"Courier New">debugfs: Direc=
tory '0000:0b:00.0' with parent 'ntb_transport' already present!</font><br>=
</div><div><font face=3D"Courier New"><br></font></div><div>No network devi=
ce gets created. To fix I have to reload the ntb_transport and ntb_netdev m=
odules.</div><div>Am I missing something in HW device unregistration sequen=
ce?</div><div><br></div><div>Thank you.</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/479fb8a5-e3e9-4cd9-a084-7a18a2bac57dn%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/linux-ntb/479fb8a5-e3e9-4cd9-a084-7a18a2bac57dn%40googlegroups.com</a>.<b=
r />

------=_Part_215_1205169160.1603837926607--

------=_Part_214_1691689788.1603837926607--
