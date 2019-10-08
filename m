Return-Path: <linux-ntb+bncBDY6BUGV7MGBBJWT6PWAKGQER3EQGOY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB90D0185
	for <lists+linux-ntb@lfdr.de>; Tue,  8 Oct 2019 21:55:19 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id m6sf1408086wmf.2
        for <lists+linux-ntb@lfdr.de>; Tue, 08 Oct 2019 12:55:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570564518; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lc+Yk2ZazKhb5IM1MCtz69K1VM2Jhi7HDZk1E4XcRGPHnnTf7Uy8HF+DCG8z5POn+T
         xeYs4gapHMo0QNSsXEoIS4wZ4jUPEFAye87Ho36lMlK1qz+NINY1YtAB2TdgvcUiMo95
         RFetfMQ6f3e0YxR3RLvB22wxRtvP675mT8j6HTqgURdicMYwbzsUR/kunWWm4pU8S3Qd
         Dqakd8W1GrR2WFdQ9Q124o8o1BMIB8ZpczvlcLfTaKBKlexgAYd6d4SBr7HORht0c4eP
         JLU3vY0uorG2QcWl1sq2EDDiaJ2ZWZ2a/ngRFAfGHX8rj9JBmHBfY20pik5fnHwW2g+u
         MCfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=3QnqgJYrPPGHodpefq8tDY9ToPPt6sFnnHMYyhxudbk=;
        b=Sg0L1XXle8PlpJDmC474B60YsDFd4aokAmvDvR2c5UpkAGMPbAq9+nxAl/t9xmDwdk
         6ILahdV8fwHegH+e0DeZGRDZ1jOU+ynT9P63E//ov7wwZT7JR1/MG6zryp2Xu2/sGb4m
         a4ldJUw45usuq7dWiEAZEsAZi6Um6bC37afOg0kSrQd6GvS4pH3AkAJ1nUD+LX9dg03Z
         mrGeZv8fGiIFCt6orkQjUHyy8nnYIu6liDZpMRGzVI5211ywmNzi88ENge2UmnctUoPQ
         v8eFZJrkYML4657CNlGjK8fuZM5e+qhHb6nkQSvI3YnNkFHGPmDBATwQgVfA/NWhcY2w
         f7YQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aMQQgi7d;
       spf=pass (google.com: domain of currency1000000@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=currency1000000@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3QnqgJYrPPGHodpefq8tDY9ToPPt6sFnnHMYyhxudbk=;
        b=L23qceQJ5lw5OcWFx+Vhk7tjg3yd+GmJ2/eGiwAAiDx+vmjI+AOrd3bDOgbjTMUuai
         l6n3DhxVw80isPMgZKOrY481Mni0cVP8QsHSQV3z6mfJibciYQdEkNCMCXHEl+HocvNG
         4d8i6QMFPxeGR+9gRp5d+cjhIW4cnzKHknXWZhwyB4KnJCIpEg9Cj6uj5k0jyE8rnJ5A
         TAOZ7I8oS4Z3VOYGw/sD00vldj3XtmJISvn+uF0Bl43TLWfK7UPuIFVwObeSfp0L4k4c
         JIdMIpK1/GYE/VSlBB5vGhhlM5OUv8OjY9qpBr3PxIY7vaLSt2/tTRB4niWfi/bTMdO6
         BfaA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3QnqgJYrPPGHodpefq8tDY9ToPPt6sFnnHMYyhxudbk=;
        b=d6irrKVDEuoVkXD4wluTX/3v7NP6GkQ4xkAEfnomHu4+yZWYRhyrCU6+U16lrY063G
         kaEF9DqvMWscqU8XWg6wiMvsiA7BEOLY9EPUG2qgDpfuDsRcV0A5suLj5aPvyP5BEM/Y
         Vv5jvrW6Xphtfm6DNQb/cEWR8i/oZjKeYhq5KHBUy1oh28RPFO6tWLvK+tmNOLPfq3r7
         la6U+eE7ObDoSUeGUMqNFN4xm+Ey2qceXeElaOskoQCvLxOaz0WXI4H0QaPZt/SBry4y
         vDX5CsViNc8kAwl3/f87xLTjXAfy70FerFZJ+GjfhreUeEWriM4dqe743uLdMqjPveT8
         fB6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3QnqgJYrPPGHodpefq8tDY9ToPPt6sFnnHMYyhxudbk=;
        b=b+4T13xrvHxMZE8gq7ipgW7ADTeM7iF+Db+07/vO+2lZ51w5UhamVQ7UAbUg21IOly
         ONd2cAGBYGCbFmjKhPNYElLOKoPIfWCfTRiUh+kCikNHpZaZjoZZb3CavSPJsENfEU26
         GrMyC45LmSlEOpvp1JBEDUdp76Ypx7Btc4IG3+abyCiP/25kbm9FZYFHhm4usBVkuhBc
         i5ZvTlbGdjGbr/E9OO6Q8aWlO2kBXGBkWFssgTVBSGdnPftV2l2IwO8+XQie7qw3eN5A
         xjPku9X34ss6QtZcJYImIdZ0bO6VabZNiR1RLK4OXcQUTM02nU3OPRI7lJmhUAfJUzxm
         iGpQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAU61ytVZo1cTSzv4sr2vIDmJClEWXiD1vEpyvEU09rd9zREPIpz
	+NB5NrJ/TR8R1f2u9Czzdy8=
X-Google-Smtp-Source: APXvYqwh9VTBpU/kjGj9D9TkwX1mY5FFSZa36aB8nghOaiSAqVgOBPNY8gu4oau8lpcm0RAapcVcWQ==
X-Received: by 2002:a5d:6885:: with SMTP id h5mr28824790wru.92.1570564518774;
        Tue, 08 Oct 2019 12:55:18 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a7b:c0d9:: with SMTP id s25ls516wmh.4.gmail; Tue, 08 Oct
 2019 12:55:17 -0700 (PDT)
X-Received: by 2002:a7b:cb0e:: with SMTP id u14mr5528949wmj.115.1570564517878;
        Tue, 08 Oct 2019 12:55:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570564517; cv=none;
        d=google.com; s=arc-20160816;
        b=kj5jhThH6Nd3SmomVvf2234LymisXHjEDk6EvzhOIrxLOXFdrdlb+BIKd7rcpSrJII
         0c7BdRsyjo1DQW+yOKnVlBmFC8UEep/2qOmlnmZ9i5q/VqI7a7++O3GMw6akkDvJ5+MQ
         fyfuPc5RsQXSzkLXn1xdSc4MuoVV6D4VzSuB7AVwVEDcNg8l9sZ++xGevpleYQPeW5xC
         QfW0l+BpQnuC9AtqsUXghd1d5sxtz+u7J3dyH2TvOijKXsMFc2T4wKl8nNYOC9XKWF5v
         zoMLnf0Nz9BZucu9+UVNAcMGHCXEnq2WoVRjfyF1HUmnzxLfFuA3lD23PZ9eFWD6QUpr
         a2AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=d9t6Rq0RbZ7PXIZmIcLbP2JTBMFny2QBILsKgMXZe9M=;
        b=iVPc+ddycmXoi5uylOzPZuZNsoAoEO0MeY5wTBDUtw1pGIyJ5F5E/yV3KTin6IMtWk
         3eVa3+IRKc+P24KDk7Uif72DXMEiRz7bwtcnbMF1bzrhn8LWm+0gYKvxbVQ3eBFRrznr
         GQxPlP9M91I+RiuXMnBU0HI881ifr63skEfUlvegoqxnn7kxeQkfvZyFPzTSRLczF9k9
         lONkcjTCOk1YPSTpfIgwK4PiDR0w5hC7WkGWl4fhhF7vz7rxft0c/1cxMy/aecI5Q4cw
         wXyQleBAzo0akI7VBBxb+sJXSSC76gTnJRM1aiRrdeLFIuu1o9aiW8TiMc+U/IAmcZZU
         w92g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aMQQgi7d;
       spf=pass (google.com: domain of currency1000000@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=currency1000000@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com. [2a00:1450:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id l3si198634wmg.0.2019.10.08.12.55.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 12:55:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of currency1000000@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) client-ip=2a00:1450:4864:20::52a;
Received: by mail-ed1-x52a.google.com with SMTP id r9so16818807edl.10
        for <linux-ntb@googlegroups.com>; Tue, 08 Oct 2019 12:55:17 -0700 (PDT)
X-Received: by 2002:a50:c306:: with SMTP id a6mr36339639edb.108.1570564517490;
 Tue, 08 Oct 2019 12:55:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:cc89:0:0:0:0 with HTTP; Tue, 8 Oct 2019 12:55:16
 -0700 (PDT)
Reply-To: moneygram.1820@outlook.fr
From: MONEY GRAM <currency1000000@gmail.com>
Date: Tue, 8 Oct 2019 20:55:16 +0100
Message-ID: <CAPqfnSEO==O6BEtBbcMMZfh3qcY4Bz0qndhCqbcLqZx4DCs44A@mail.gmail.com>
Subject: HERE IS YOUR MONEY GRAM PAYMENT HAS BEEN SENT TO YOU HERE IS THE M.T.C.N:78393135
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: currency1000000@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aMQQgi7d;       spf=pass
 (google.com: domain of currency1000000@gmail.com designates
 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=currency1000000@gmail.com;
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

HERE IS YOUR MONEY GRAM PAYMENT HAS BEEN SENT TO YOU HERE IS THE
M.T.C.N:78393135

Attn: Beneficiary,

This is to inform you that the America Embassy office was instructed
to transfer your fund $980,000.00 U.S Dollars compensating all the
SCAM VICTIMS and your email was found as one of the VICTIMS. by
America security leading team and America representative officers so
between today the 8th of October till 1ST Of December 2019 you will
be receiving MONEY GRAM the sum of $6,000 dollars per day. However be informed
that we have already sent the $6,000 dollars this morning to avoid
cancellation of your payment, remain the total sum of $980,000.00.

You have only six hours to call this office upon the receipt of this
email the maximum amount you will be receiving per a day starting from
today's $6,000 and the Money Transfer Control Number of today is
below.

NOTE; The sent $6,000 is on hold because of the instruction from IMF
office, they asked us to place it on hold by requesting the (Clean
Bill Record Certificate) which will cost you $25 in order to fulfill
all the necessary obligation to avoid any hitches while sending you
the payment through MONEY GRAM money transfer, the necessary
obligation I mean here is to obtain the (Clean Bill Record
Certificate)

Below is the information of today track it in our

websitehttps://moneygarm.com/asp/orderStatus.asp?country=global
to see is available to pick up by the receiver, but if we didn't here
from you soon we'll pickup it up from line for security reason to
avoid hackers stealing the money online.

Money Transfer Control Number M.T.C.N)::78393135
SENDERS FIRST NAME: John
SENDERS LAST NAME: Chun
SENDERS COUNTRY...BENIN REPUBLIC
TEXT QUESTION: A
ANSWER: B
AMOUNT: $6,000

We need the below details from you, to enable us place the payment to
your name and transfer the fund to you.

(Full Receivers name)...................
(You're Country)................................
(Address)......................................
(Phone NuMBER-...............................
(You're Age)............................
(OCCUPATION)..REAL ESTATE..................
(A Copy of Your ID CARD).SEE ATTACHMENTS.............

HOWEVER YOU HAVE TO PAY $25 FOR THE (Clean Bill Record Certificate)
AND THAT IS ALL YOU HAVE TO DO ASAP.

The payment will be sending to below information, such as:

Receiver.............. ALAN UDE
Country................Benin Republic
Amount: ....................$25
Question: .....................A
Answer:................... B
Sender...............Name:
MTCN :..............

According to the instruction and order we received from IMF the their
requested $25 must be made directly to the above info's.

Furthermore you are advised to call us as the instruction was passed
that within 6hours without hearing from you, Count your payment
canceled. Number to call is below listed manager director office of
release order:
DR.ALAN UDE
Director MONEY GRAM-Benin

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAPqfnSEO%3D%3DO6BEtBbcMMZfh3qcY4Bz0qndhCqbcLqZx4DCs44A%40mail.gmail.com.
