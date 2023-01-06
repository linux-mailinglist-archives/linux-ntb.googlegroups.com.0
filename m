Return-Path: <linux-ntb+bncBD2KJCOQRYJRBHG336OQMGQEXA5KGZA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1065D65FE38
	for <lists+linux-ntb@lfdr.de>; Fri,  6 Jan 2023 10:45:07 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id y66-20020a25c845000000b00733b5049b6fsf1401639ybf.3
        for <lists+linux-ntb@lfdr.de>; Fri, 06 Jan 2023 01:45:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-sender:mime-version
         :subject:message-id:to:from:date:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w0If/Nj0+sNSOlOmhwgu1N3m0J9qH16Si54YdjfvtLc=;
        b=iDicfysi5UmMT4D7dKOJJTi3h7QCFFDhz59ymSaeao2M0tggNaYHdFjwrExIEBYDvT
         XqzCRM9bODlX3EObitGGQwRA8UtxGtneKpSIrDBXKheD4ARZDQWG4SZUhnPI5E8D4o8w
         dIIB1Rdu8Qhrwyue0RYqXaKqYg2StdkkOqxZvihryCUKkFUbLnehVrtEepAystZazG9k
         jlgYPGBxY5SRRJllS0wcNuzdXmF53ePuDMMbPMFqtYN4bqoDYWKFmMB1d1tmP8dSgQTF
         +q83jr3hzhyxDE9mwmT7m5uIOVg0nrj2MbY38z/E1XQra5V2D/cepMM4/A8gB0Lu7b7V
         iyJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cimware-in.20210112.gappssmtp.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-sender:mime-version
         :subject:message-id:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w0If/Nj0+sNSOlOmhwgu1N3m0J9qH16Si54YdjfvtLc=;
        b=15ql61a2Vv2yl+xV7oyCGLyV/H4lwVAoV5Pj2yG5a7pZ//vjIul04xHUfLy7iok9N8
         YIp2dWC57SCEHbCOTqV9FDpCYggTPazfIkTV5Iuu5oA3pOpyakQ+gLn25F1/AlT2xTUA
         xul79stKXcDMOUoh8E7vRO/aTDIbTD275YrgdIqLRvdaFxwfmd5GtRU/xJmxSnXiivhi
         S5C7iuMRMTnQbGiYaN4PFuJnOtH+v0WtyWBp2XySv/STjFfF04sCWMKxmuGpHJo2vsxh
         QZZg/rbjx5XseYjGzFgmMP0iKjkg99y3taLDFrdlCsJXYg25l03wUVLNkofAY8ZbXo/D
         c2mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-sender:mime-version:subject:message-id:to:from:date
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w0If/Nj0+sNSOlOmhwgu1N3m0J9qH16Si54YdjfvtLc=;
        b=ni63zh3RgpXPUV8QPUDgT/SqvfTCOmvSofJWboIlc/TKhH366WYvZFVqMJyqmqa1nO
         3hJcrnSZ5RaYTQG3Mdury7Hblfs8dqaZ2f+NpgCifc3PG3nyzLwPz7EmS9U9jbHMIUDa
         hPZN2vG/FOOdZ5FoZvof3yxTHNS+7pKR2EkqcAq6cQ2C7kV3VxMFHw/9GSPYnO0qBRVL
         8Mcdyv+0UKPNex5vPjJC9o/XA/yMW8SCXjQ/ZSansVpBQwPnq5LSE98vjj1rYvsqLn2Y
         lGKbjc1ScaBrE+vdEE7JCw1AnVIgS5r5RynUlNnWMJnqurKquPeu5pMxC37kAPA+FHRX
         +alA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AFqh2kru9hUcN6g2kkTigrXkKePoLqiAGLzXzxIttT0mVFP2BPcnXExC
	5sz/IWoZnkptG9dD2Neah+g=
X-Google-Smtp-Source: AMrXdXvWc4doV/gbEviUN6Iv9iBlThA6I3tsoRPte4TN7FZiI0eFR3kXSrqmTtV2VshIMgfhRKldyA==
X-Received: by 2002:a05:6902:281:b0:73b:eea3:accb with SMTP id v1-20020a056902028100b0073beea3accbmr6127115ybh.327.1672998305702;
        Fri, 06 Jan 2023 01:45:05 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0d:d849:0:b0:3da:94d4:c8b4 with SMTP id a70-20020a0dd849000000b003da94d4c8b4ls462044ywe.3.-pod-prod-gmail;
 Fri, 06 Jan 2023 01:45:00 -0800 (PST)
X-Received: by 2002:a81:5b84:0:b0:47a:5824:f813 with SMTP id p126-20020a815b84000000b0047a5824f813mr4434317ywb.496.1672998299711;
        Fri, 06 Jan 2023 01:44:59 -0800 (PST)
Date: Fri, 6 Jan 2023 01:44:59 -0800 (PST)
From: Kannan Sivaraman <kannan@cimware.in>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <6df2c56f-cc4b-4dfd-81bb-9ac79db15f56n@googlegroups.com>
Subject: Building ntb_netdev.ko mdoule..
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_794_1738714448.1672998299136"
X-Original-Sender: kannan@cimware.in
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

------=_Part_794_1738714448.1672998299136
Content-Type: multipart/alternative; 
	boundary="----=_Part_795_2029269013.1672998299136"

------=_Part_795_2029269013.1672998299136
Content-Type: text/plain; charset="UTF-8"

Hi,
  Can anyone let me know as to how I can build the ntb_netdev.ko module in 
linux.

Thanks,
Kannan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/6df2c56f-cc4b-4dfd-81bb-9ac79db15f56n%40googlegroups.com.

------=_Part_795_2029269013.1672998299136
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div><div>&nbsp; Can anyone let me know as to how I can build the =
ntb_netdev.ko module in linux.</div><div><br></div><div>Thanks,</div><div>K=
annan<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/6df2c56f-cc4b-4dfd-81bb-9ac79db15f56n%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/linux-ntb/6df2c56f-cc4b-4dfd-81bb-9ac79db15f56n%40googlegroups.com</a>.<b=
r />

------=_Part_795_2029269013.1672998299136--

------=_Part_794_1738714448.1672998299136--
