Return-Path: <linux-ntb+bncBDPNRNUM4INBB6ODX3YAKGQEVODMSWA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A1912FDAA
	for <lists+linux-ntb@lfdr.de>; Fri,  3 Jan 2020 21:20:10 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id g19sf34993871ybf.20
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jan 2020 12:20:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578082809; cv=pass;
        d=google.com; s=arc-20160816;
        b=jKPWT/WyhtHYRly/fJe2BQdpjzjt0QBVT2eoDuRpMhjF1kxYLnPU1UQ4h/qQMG2XtU
         o00TZbIJe30AE+lr1+8Maqh2v8jsSFatqS/JGhl5Tf0m6TJHWeUSLz12+k4ahhh5ZsHx
         TD2PVw1TgZ/wBV4ns5DTmtTIMmBQo4Uro3RHi+J4kNBbbNwO12UrNcH2pv0P9/QiVLys
         RLUaN+nojau7RoQL0OgmmRf+jyBS6fk/aRVd8uD2Unz2Q/kRUNfUYRGCHIfokj/zbfGe
         8QKraiMHLPtMCJ/PJrulDrlvchh6GFKiS9ha3NI9qqEhhXJGvvshHVWgDXThs3j4TC4w
         kSyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=C0x8xPXm0EwXeiBslG8+cleZsmQL31Xwj8F/SSV2ekk=;
        b=nYvdp09D3StfXmKMYnyDJTnYnMelgMw2h5rZDcBapia7VRJK5CPoxgIQyuyK8XpHVD
         HLy8lqVgXOywp5Wd6BCS4j3KsnchtPvN6yU2dr+KhuiFC/0tNPvmY12+q6mRe10jnH7k
         JuDW82pfHAAYUOk4JoMsunW/FxIXbOChNeglxAIcRVq4Zx9P3jzJ59Y8xEWtFFXhq4j8
         6fckc0rKJSpIruVtcJaEDa1GjcZSorxFgkH7A1BRM9rTbIoWdhHQ3rrhyK36N8DlSCLq
         0yfrl5CE9LMm5mBcopSyWQUyCpfz9Q2ZqJpgdOnVoWElqhfEJE++ZpQaIP9R22wYnwCN
         nagw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JHYDNcOH;
       spf=pass (google.com: domain of westernunion.benin982@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=westernunion.benin982@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C0x8xPXm0EwXeiBslG8+cleZsmQL31Xwj8F/SSV2ekk=;
        b=HaAcaycNi2IdVCd/1v0MKrx6qrzx1QI4Y4pCvjvAgjz2bl3LpkBkHQvmeCWEswPhqW
         s0dVSlZ88JLbXdfAvU2JWfA/BhwGVY6vV9pmZXLYv7kyvuiJt+eH8Ca7/HrLLWWDcVkp
         tfIBR4iO1s9JjZvCsh334mbf7L/MhEkpoqdSRjYijN6MOTYR5lc8/PHtWbCObay+9GYW
         hGbyEG9ZSMo7BZ/gth2qtI0NydjcIcOLGeu6faBKj6u+hbWgtcgR4JSLGZipn89LnRx3
         Wv0Gia5vtWbjEwMYMEExk1hIxUpAvOB+vwC/3SVIJ/lGS57TT2EEnvLgS4lfMD20e2J2
         R4AQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C0x8xPXm0EwXeiBslG8+cleZsmQL31Xwj8F/SSV2ekk=;
        b=e4rp1E/OGg3Mhol7jXRJJxGLEP3IHfMU2Os5bfqv/bsIIjM3UECQPPfMke5Fvk4Vs0
         CNVik6CenFr/+O35t+qQ2RjwFbubBE8vWFGNkDUgaZsLz40UQoP8IXUREiqpDS5WD+tr
         ueqNKlZoex0Q0aFzgcc9r4fmaSFhm/gfgnfA68DPrXsyCC9BM/2xl2s73OcFPR592mit
         2kQfvugzUgaumDuv3Ft53D4/qGRSp5FbAi8IeVVcRyOthohrZgScEBJahgF3ZesQKq0g
         05Bb/MU09cb/Y0cHw1Zb+n5sQ+c2uZSzKzFrEAruPGdCt8zDNlHsZacPPf+FmmnAy3X/
         D5PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C0x8xPXm0EwXeiBslG8+cleZsmQL31Xwj8F/SSV2ekk=;
        b=hRoOkDJkxC0gNhVIWMDeXVlV887SVnBJXLvk0wSEL/DmP5u4swLDH8unNg29l7qL9C
         FnL1HgpGhy0h02Wag0W8SiTqEhfB0Jb4kpoh9VLLbT9YxjYKRsnXT/kZHNCBlpdymxMv
         HUO3485KR8LyAU7b9MewZfk8oOWoYj6jcJPrLbZDDOqNMmSEGdN+F2jrilTcu2nPmHj+
         nd3mWlgQlXv5ZXFyeh3fvATUlKBsXALEOYYKdPeQRUghFY9Ps93CY743xnQL1dBcbtun
         rPx8vOF0P1vUdxrwRuJVbE1RQwl3XbsxJvbHVmTQJmLkYCzUyM1K2cBExVcz+IyITX6i
         TBWg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWOSMPaSzZ8lPjLywyQj1LOiYu3Xqy6Tq/YIXlhWahqb7+0Lblk
	SAmPp6Sm5XwRZS6W21W2KfY=
X-Google-Smtp-Source: APXvYqwUW3zzIsMFsg2sk3E/B45gUU3sZmLRvdxFKQSh3NPwphtMSieN6bGmiVytleK25h9LFaQIjQ==
X-Received: by 2002:a0d:f147:: with SMTP id a68mr65689724ywf.371.1578082809359;
        Fri, 03 Jan 2020 12:20:09 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5b:b92:: with SMTP id l18ls6713277ybq.8.gmail; Fri, 03 Jan
 2020 12:20:09 -0800 (PST)
X-Received: by 2002:a25:3d3:: with SMTP id 202mr58667380ybd.17.1578082808943;
        Fri, 03 Jan 2020 12:20:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578082808; cv=none;
        d=google.com; s=arc-20160816;
        b=xORs+RQYW/lrMFddacqhPxNLXlze14hbCPld33a+Dp+i9cZJ1bsLj38Sw/ZgDCbh+3
         fLoEeehcJ9/g8t5qO/nX76VX6PleWzISa1uzx3XcGEcCgRVCTsalmuH2mNSfEcSBm/yj
         +57xSfTwko/RqsT9TMOdwqLL7iNYFZnUmwf//EWhE/C7x0WK681KKc845vsaxd0qQjs7
         diSDfrJoIMTRXtneL830HQUyw2PC9DVKlQqCq6ZCUBXavhni1by3/JRUjD8EKKQMhqY0
         5thGFycOzR0vGCs70tlpKEMdN1YKZ6TEO5Ko1BsDBH40jy+KqRz3JWQ7L1xiS5Ab3h+5
         iJng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=40ACnQIUnpge54Cj+EODMXbGQ2AM0yGbootCDBdgIh0=;
        b=zS6hwTxjGtrvpqmfA8RfgELnQtuAlgRIqbnCpJIUocHp9G99NBYCOH8r6tZn/Vo90+
         DGCZ/l/HLx7UAu65M77R0KshZw9HYK6rO9BJbL0wlSQlYy/RpNgfoGoaV9XWqJoOmXGW
         1PUoxC2UYmUM/ZEz35BndbcqVKb63ds9VPCkKYdpdRio5AFUuBorhth7koTchVLdRabs
         xRF29zIC7xI+o1XRoYydqsNLntGn0b2bzeBRH449d8HHYGo4X6GWG8ExPVmqp1HSpuVS
         yoeIuUQByYMWhZogNUGl238QoB+fHl+dWin5AiBLofA0f0gMsqHhop4uB1jy92iT3Idx
         9wrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JHYDNcOH;
       spf=pass (google.com: domain of westernunion.benin982@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=westernunion.benin982@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id f8si2056629ybg.2.2020.01.03.12.20.08
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jan 2020 12:20:08 -0800 (PST)
Received-SPF: pass (google.com: domain of westernunion.benin982@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id t129so34707194qke.10
        for <linux-ntb@googlegroups.com>; Fri, 03 Jan 2020 12:20:08 -0800 (PST)
X-Received: by 2002:a37:4141:: with SMTP id o62mr70745354qka.282.1578082808591;
 Fri, 03 Jan 2020 12:20:08 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac8:4410:0:0:0:0:0 with HTTP; Fri, 3 Jan 2020 12:20:08 -0800 (PST)
From: "Rev.Dr Emmanuel Okoye CEO Ecobank-benin" <westernunion.benin982@gmail.com>
Date: Fri, 3 Jan 2020 21:20:08 +0100
Message-ID: <CAP=nHBJWiJ9KpSSbF4jP9u5UiU5d_kGjSUyPYDmdB2x1uiJFMw@mail.gmail.com>
Subject: I promise you must be happy today, God has uplifted you and your
 family ok
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: westernunion.benin982@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JHYDNcOH;       spf=pass
 (google.com: domain of westernunion.benin982@gmail.com designates
 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=westernunion.benin982@gmail.com;
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

Dear Friend

i hope all is well with you,if so, glory be to God almighty. I'm very
happy to inform you, about my success in getting payment funds under
the cooperation of a new partner from United States of
America.Presently I am in uk for investment projects with my own share
of the total sum. I didn't forget your past efforts. IMF finally
approved your compensation payment funds this morning by prepaid (ATM)
Debit card of US$12,500.000.00Million Dollars, Since you not received
this payment yet, I was not certified
but it is not your fault and not my fault, I hold nothing against
you.than bank official whom has been detaining the transfer in the
bank, trying to claim your funds by themselves.

Therefore, in appreciation of your effort I have raised an
International prepaid (ATM) Debit card of US$12,500.000.00 in your
favor as compensation to you.

Now, i want you to contact my Diplomatic Agent, His name is Mike Benz
on His  e-mail Address (mikebenz550@aol.com

ask Him to send the Prepaid (ATM) Debit card to you. Bear in mind that
the money is in Prepaid (ATM) Debit card, not cash, so you need to
send to him,
your full name
address  where the prepaid (ATM) Debit card will be delivered to you,
including your cell phone number. Finally, I left explicit
instructions with him, on how to send the (ATM CARD) to you.

The Prepaid (ATM) Debit card, will be send to you through my
Diplomatic Agent Mr. Mike Benz immediately you contact him. So contact
my Diplomatic Agent Mr. Mike Benz immediately you receive this letter.
Below is his contact information:

NAME : MIKE BENZ
EMAIL ADDRESS: mikebenz550@aol.com
Text Him, (256) 284-4886

Request for Delivery of the Prepaid (ATM) Debit card  to you today.
Note, please I have paid for the whole service fees for you, so the
only money you will send to my Diplomatic Agent Mr. Mike Benz is
$50.00 for your prepaid (ATM) Debit card DELIVERY FEE to your address
ok.
Let me know once you receive this Card at your address.
Best regards,
Rev.Dr, George Adadar

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAP%3DnHBJWiJ9KpSSbF4jP9u5UiU5d_kGjSUyPYDmdB2x1uiJFMw%40mail.gmail.com.
