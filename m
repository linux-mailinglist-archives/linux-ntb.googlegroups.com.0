Return-Path: <linux-ntb+bncBC2K3M5VRYEBBQM3YHTAKGQE7TRRJXA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B99014F0C
	for <lists+linux-ntb@lfdr.de>; Mon,  6 May 2019 17:07:46 +0200 (CEST)
Received: by mail-yw1-xc37.google.com with SMTP id e5sf25766054ywc.8
        for <lists+linux-ntb@lfdr.de>; Mon, 06 May 2019 08:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MPuLPlOZSpD/GqL+phx9RQL7fTeTwawF0nKR/NP/r+I=;
        b=AcimufdmTLzkcDnPRHHS40g0nyze+uSaEHm55bIDjmT8Jz8OfP/jZNEcbpjdCG85Ke
         iD1LRPWBSVsshbP3T2sN9Kh4+hmH8L7SfamjsCjv0v7SySiB/DQpt6kYCAleEpnmMlhu
         COGP5OnEiKDE62jW22SzcUKWEkZSgNyvpLP7XhSpAOI3Gcms/D/zLbrv/aWBd/z/Whgc
         sN+oE20gOqsxbeby7vbBYT71BvjSe1uPUo8g3KsrvXKeQVWTpPWNBM6QUBc9dr5Q0H81
         QjowbNUM2ahGJCKQ0ecEUUuQjM2tlR8OTy3y8wcdtejOyV5rYrvcyUxAdZsZ4yz7ndYw
         3jAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MPuLPlOZSpD/GqL+phx9RQL7fTeTwawF0nKR/NP/r+I=;
        b=nZm/wv9ceBJI6qn0/WDkkfx9VCVw+9zdsBvqynuGVU2pjbfjBFO24JmoQbxnxCfzOD
         7/qr4lT+nRcrohmLyebJ1WSzdDwUfU8AH2nPENB+62u3v64E0omFUeICy/EStXW6wuZ0
         S61/BbUW8FaqUPs+lkwQEMxArlFSTFW/k1ecTwRGI/1lA8xkoBBc9VJieXd8NIJCAX4L
         lE6FhrvlPB6EQXysbF/gJiVOeOWvxnL9/rVud5+qroLeK1jHxBDZb6z/apFMUOroyDBK
         7sRKoj57mQhL8KsR+U1lNUunfl+Ml0UL3fVqpcEgA+itHLuGXa34VKsB/i569Q+3NHaX
         +PQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MPuLPlOZSpD/GqL+phx9RQL7fTeTwawF0nKR/NP/r+I=;
        b=WozbHN8Ywb35dTWtdSXwMxPQCmijLErNWi9wXl39BsIGdIlJF59BMqj9dasDCiam1J
         PweMcY4PNiSAHyU3hQW4D9YhTbsblaClxU51OPVJCR+CHKDDRaf8HKWa9MDiPThVcAHf
         PqlGUwF6DPrz6Qe/inL+6+JnF3igHFa+xE/M4HnPYZv/RoL4+FgdlqPFgXu/OT+ibCJt
         aoE4F/v1Wee4px91iUVZkOGYwI/iaE6L+0G36VOJqXvfyrJ2RrX8XpaHE6C0EbDP9fWZ
         IO1QzRkxDtmO5unpxL7LYMZnSLCwdCtg949nGGDBhT9y/qR08yoJ8nLIpwvAc1G+IZjf
         cQ8Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUuHPPto8pYfVKyHYW0HM+R3uizP2YlOyEDBDMUZvktZiJ1xgWW
	YhSKKWQwex5V0mFUDZtlOBw=
X-Google-Smtp-Source: APXvYqynKZsIuZAqfZavOYQK96EHVx5p0+Qc3YBMQvbwWAY+RlDGqjSspyxtlIiZUv16iyl2iAvXYw==
X-Received: by 2002:a81:3d51:: with SMTP id k78mr17912705ywa.106.1557155265291;
        Mon, 06 May 2019 08:07:45 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:7102:: with SMTP id m2ls2309488ywc.1.gmail; Mon, 06 May
 2019 08:07:45 -0700 (PDT)
X-Received: by 2002:a81:68c5:: with SMTP id d188mr10955285ywc.272.1557155264877;
        Mon, 06 May 2019 08:07:44 -0700 (PDT)
Date: Mon, 6 May 2019 08:07:44 -0700 (PDT)
From: trifundroid94@gmail.com
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <0552a831-a738-4eb0-8021-a64f3dcec1ad@googlegroups.com>
In-Reply-To: <dfedc9af-85cd-4b78-9249-3ce794fbe3b5@googlegroups.com>
References: <dfedc9af-85cd-4b78-9249-3ce794fbe3b5@googlegroups.com>
Subject: Re: NTB connectivity issue under heavy load
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2042_869245880.1557155264300"
X-Original-Sender: trifundroid94@gmail.com
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

------=_Part_2042_869245880.1557155264300
Content-Type: multipart/alternative; 
	boundary="----=_Part_2043_1643283959.1557155264300"

------=_Part_2043_1643283959.1557155264300
Content-Type: text/plain; charset="UTF-8"

We are using Switchtec PFX x24 switch if this is of any help. The 
ntb_hw_switchtec driver versions are 1-rc1-173-gba65e6c for the one on 
kernel 4.14 and is obtained from backport_4.13_to_4.14 branch of switchtec 
kernel repo, and 0.1 on the 4.16.7 kernel on PC which I believe was already 
there.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/0552a831-a738-4eb0-8021-a64f3dcec1ad%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_2043_1643283959.1557155264300
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">We are using Switchtec PFX x24 switch if this is of any he=
lp. The ntb_hw_switchtec driver versions are 1-rc1-173-gba65e6c for the one=
 on kernel 4.14 and is obtained from backport_4.13_to_4.14 branch of switch=
tec kernel repo, and 0.1 on the 4.16.7 kernel on PC which I believe was alr=
eady there.<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To post to this group, send email to <a href=3D"mailto:linux-ntb@googlegrou=
ps.com">linux-ntb@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/0552a831-a738-4eb0-8021-a64f3dcec1ad%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/0552a831-a738-4eb0-8021-a64f3dcec1ad%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_2043_1643283959.1557155264300--

------=_Part_2042_869245880.1557155264300--
