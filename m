Return-Path: <linux-ntb+bncBCZ3V5MFGUIOXO4H6UCRUBCANX7MI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1CE1B6355
	for <lists+linux-ntb@lfdr.de>; Thu, 23 Apr 2020 20:26:53 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id y16sf6046947pfe.16
        for <lists+linux-ntb@lfdr.de>; Thu, 23 Apr 2020 11:26:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587666412; cv=pass;
        d=google.com; s=arc-20160816;
        b=ABPSO5xn5D1qzfnjB07vh50I0WxOhN+bO39g1+7+EkzkhTQarQ2k80gpKze5oLlfnb
         5wLQETzEIwj8R26xibsP8XkNJWQLRHM+6oGAvlsEoqF+dtkZ46/4if6VT4cILE7CinjN
         hYP4mEmJ81nfCves9I8fRU+K5Z0SIAF7JTQ5JJcwgC75cMNKaIQAhKXRDlPESCVNtG7L
         fL9DaU9V+N3HcSebLctrA4PcZFxAj+tFsGV7oicGEZvv/9+fYMOQ3IcKMq+lOJBYrx7a
         FWEKcA4MG0z6YNtKcAuiE43twdDfoSTmDvShQbJrUFKLiMgw20CjcnZqdlrWxHSEDEf+
         r9cA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:to
         :subject:message-id:date:from:reply-to:mime-version:sender
         :dkim-signature:dkim-signature;
        bh=YtYTa50I6tRBjMlUT5egxFIOM/4bJwAvLb4lub5nVAY=;
        b=KfiPq3s26x9qUbjV99huTORlMXmEKfk2Gl4pM1biLMkii1mGdTEQcbGgTF6q8pCbBl
         qI4TleX85KnVDLU6Pb7e/8/LUtPj60lN1+qZ11kLB9UTU235hrwEeDwkpRK1A2kvm/V1
         TK3OG8emTN10ywQybREbZmKTb/SizQSpbuPp30lm8hrZeQnrA1l/EaGb6hGxyD653/pO
         NUANrK6e49hXZAI3upT7YS2pe1nlm+MGG+5rkzu92HxyQ5hy8YmkG6sO87tXFVCZc7bg
         ahbMxqZKNVUodI1XP+SibykZM02SGOHVt7Nu4KfGXEdu+anNnNSVNmC5rXy2iIB9IgeK
         hHtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g40sBMua;
       spf=pass (google.com: domain of info.zennitbankplcnigerian@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=info.zennitbankplcnigerian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YtYTa50I6tRBjMlUT5egxFIOM/4bJwAvLb4lub5nVAY=;
        b=RXqCScPRXgMhQUYVazBHRtiBcNOG334CEZijPzeyzu4q4Qpuz1IZDOYfQriT6vM1gd
         ATv6SqDFo60O29DsVl4c76GdB6VAAz9kOA14DVKfASPAMeojYsgXB/68jdeWQJizrGXq
         qMUmuHpXbmusuNS/ArhcBU2OwBXJlV4ytwlbP5of7Gu+M6fbMt4Al5xYEtrzkkXxSM+D
         8O/h5dCYESypmwa6itltT8tdld/29Ws5LJJZ/OXXIzRMf5F/MnTW0JqCb1upEa6JOdWb
         UACHBoH5Pj/Q7TiAbZ0bp33dThSIAS6R2i2rq+BebnUoLUuxkt0eGikc/5GB+QQEUFqZ
         sczg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YtYTa50I6tRBjMlUT5egxFIOM/4bJwAvLb4lub5nVAY=;
        b=WuB2f6372E/jQtdmL/CFfB1nBDh3UkvG9dDfyqmCYe9eWdlZFabA3jz2EVl5GWcc73
         OLQwEorCYy66F9vfJa/osl3WXpj/yZiEIWQs4kJMzlOMIDbeyeoNMSK5bseZgpIJYCjU
         /JC0HqHPXgjmCciiRl+ccAbglyF1p6kI+iNRHK91FOtaOHeC3AsiOD73WIXGSEN+8Fv/
         2QypGpLZ09Qntpexe9IQjcWBSJ/KWS2B3Fwmqs0LwiRZ8ZCT8kpQsa72LyZ//PqnOxgX
         GKOXCWccmMoTb9Bpeo5APNWLRNPfD6AW1TyK0G89AhkblYvtu/N87ogXqBbg/hGu6I5y
         IBSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YtYTa50I6tRBjMlUT5egxFIOM/4bJwAvLb4lub5nVAY=;
        b=ZhZyagXmvgAjScjCT5wmQWKM5dhF011cWAppXhFr3I0AQRCp7rNCd1Gg9P3aAd4BoD
         +gGBj0XBzhodnll4JLnQ9Az9gsGl+a42dR24Bq7Jd+awBWt3oAnb0x7gFcUaDlFhPTYZ
         6F8Qt2lfWBu3p3J9x+PtsPKQiXwwco7aDA9pW5nzAyD5TsWTaIkTSMKBta+sQHe0cTiG
         hciFE3akvBJyO2ygJbthKfMmAYqJ6Lva4jv2aqh4da10AMfx2BLdHNtxg0iCMxcY4xwY
         Knqy3ohW888sYZ4WsaxRk4w1qi9eh4+7pECGkafnxVwCmLYsBKpDiKwEmlzsmSgo/y7M
         85LQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuZUQKizaZc4l1I4/dBzVGMS5gZ2w+WUlyEOWN2jkkDyDvf9uOPy
	QUEbFTBXZkiyhqOWdrSSaUA=
X-Google-Smtp-Source: APiQypIMNqTiLjMq+r5pJjfmn24YQJ7J3eiIGeuIWPNE9RnlmEp6cwA/WIjB6aigpDUOca1oG0h8Xg==
X-Received: by 2002:a17:90a:3b0c:: with SMTP id d12mr2141390pjc.78.1587666411845;
        Thu, 23 Apr 2020 11:26:51 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:5d97:: with SMTP id t23ls4380075pji.0.canary-gmail;
 Thu, 23 Apr 2020 11:26:51 -0700 (PDT)
X-Received: by 2002:a17:90a:80c2:: with SMTP id k2mr2103836pjw.6.1587666411387;
        Thu, 23 Apr 2020 11:26:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587666411; cv=none;
        d=google.com; s=arc-20160816;
        b=CKe2LcAsSqOBWBZyVCP8+QX1yPLeFmn7VzwDB3bWAwVFvR/ZVvtmDpM+yVFKlN8ZxS
         AKFRg44eM+4/XDWP0ywVybSeFPMgeLVufEd5P4/6vmDvoZGGxmC2T7QCIJLPzar1ffp/
         mBpgmNS6jT2a3EOsJzUL7gROofMv079oJChXB4w+mFAzT0TRaJbVJsKvQlNZBnvaGqCF
         OVLx71L1mXB8e7QezcR/LiFufH7Ad0LAqV6S8uVfSBMSHUrS7EdM9NwLKWn1K+/d2zFp
         bFZJ3f6X5krlI6WG5kl4L4EP4qLjuDMKAcLHmZvw0RljjL9ptw6nk9TRc7NLA5ZkSt98
         mrUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:dkim-signature;
        bh=DHzQtr3OkXyFWXbvXEU307GvVJtF7cl8Gt7nfdQPyE8=;
        b=y42Ayud8j4Jc5d3ijb1pUMr1q4ZJLG4lNaqtrZe6Hx5LPZPtJ2yalOBPcQ+6zQeXvS
         DLGS4fh0n2likIQWXDPWBkbo7RxcdNAhFhbH8WI+OmD/UBvvAfW+aCG16NIj0qVUd1Oq
         sOo2f2bGbIAz3gB8tEcxCVfKxwafdlEeN2XktW2vCsD6g//xrMm/P0O/g98jZpa5ipbB
         8KadAlcvC+KQP26j8uhJgMAEm2VebaFNRTkupExmtMBBYtfvDpWwHLqJoO15JFm3oxkk
         zAxT1eRjUV6b7Xri1B872fdjxZVM+/gtuaoCefyeFHTFIzKF4uIl2svjr03jb9IoSFjT
         hKDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g40sBMua;
       spf=pass (google.com: domain of info.zennitbankplcnigerian@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=info.zennitbankplcnigerian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id j5si117558pll.4.2020.04.23.11.26.51
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 11:26:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of info.zennitbankplcnigerian@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id z2so7488223iol.11
        for <linux-ntb@googlegroups.com>; Thu, 23 Apr 2020 11:26:51 -0700 (PDT)
X-Received: by 2002:a5e:9416:: with SMTP id q22mr2547966ioj.93.1587666410194;
 Thu, 23 Apr 2020 11:26:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:c845:0:0:0:0:0 with HTTP; Thu, 23 Apr 2020 11:26:49
 -0700 (PDT)
Reply-To: boa.benin107@yahoo.com
From: "Mrs. Angella Michelle" <info.zennitbankplcnigerian@gmail.com>
Date: Thu, 23 Apr 2020 20:26:49 +0200
Message-ID: <CABHzvr=N78snvtMHePMOa+RLFdcZEjXLPkuhkojt4VoZGNzBsQ@mail.gmail.com>
Subject: Contact Bank of Africa-Benin to receive your payment funds transfer
 amount of $12.800.000,00 Million USD,approved this morning by IMF.
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: info.zennitbankplcnigerian@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=g40sBMua;       spf=pass
 (google.com: domain of info.zennitbankplcnigerian@gmail.com designates
 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=info.zennitbankplcnigerian@gmail.com;
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

Attn Dear.
Contact Bank of Africa-Benin to receive your payment funds transfer amount =
of
$12.800.000,00 Million USD,approved this morning by IMF.
Happy to inform you, we have finally deposited your payment funds
$12.8 million us dollars with the Paying Bank of Africa-Benin
to transfer the payment amount of $12.800,000,00 Million Us Dollars to you
Contact the bank immediately you receive this email now.
Director Bank of Africa-Benin: Dr. Festus Obiara
Email id:  boa.benin107@yahoo.com
Tel/mobile, (229) 62819378
BOA-BENIN | GROUPE BANK OF AFRICA, boa-benin
Avenue Jean-Paul II - 08 BP 0879 - Cotonou - B=C3=A9nin
Phone:(229) 62819378.
2020 GROUPE BANK OF AFRICA
Be advised to re-confirm your bank details to this bank as listed.
Your account Holder's name----------------
Bank Name----------------------------------------------------------
Bank address----------------------------------------------
Account Numbers---------------------------------------
Rounting-----------------------------------------------------------------
Your direct Phone Numbers----------------------------------------------
Note,I have paid the deposit and insurance fees for you
But the only money you are to send to this bank is $150.00 us dollars
Been for the wire transfer fees of your funds
Contact Him now to receive your transfer deposited this morning
I wait for your reply upon confirmation
Mrs. Angella Michelle
Editor, Zenith Bank- Companies Benin
mrsa9389@gmail.com

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CABHzvr%3DN78snvtMHePMOa%2BRLFdcZEjXLPkuhkojt4VoZGNzBsQ%40mail.gm=
ail.com.
