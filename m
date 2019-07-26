Return-Path: <linux-ntb+bncBDPNRNUM4INBBKG45TUQKGQE3G5N52I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 5402976F3C
	for <lists+linux-ntb@lfdr.de>; Fri, 26 Jul 2019 18:45:29 +0200 (CEST)
Received: by mail-yw1-xc39.google.com with SMTP id i73sf39866321ywa.18
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Jul 2019 09:45:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564159528; cv=pass;
        d=google.com; s=arc-20160816;
        b=nDtly6N8kBHHYJPYjmfxLGti4ZGVUxB8MEkUlcb969E55ktuOGsRyXqADkX/TRWkwP
         uIns0+MBJd4XmCHUXgnkeTd8+IS1sNz5oQN+u4TONsRKJFG8KTDjofGekrEHoVodg/ik
         TmHsl5beHcKbjBLJGVT8ta5ELF98bJhg/2+KK7mm2uVhXyrMBjul+PpY7UAW04vrNkJf
         PFErUQsTAf0Ly+uANkK5U3Tg9adpjGS4BYmgu4KRumWi81obVgWBDKdfAtMX2iWf9/qz
         lKSeLRep9tFhhUAPMIgNFRychOJg5dyLPQreVngSqUYtXBMV7FuWKlNum27dK3Wci5Cj
         JmPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=aU4kMYhHw41jp5VmF3iOBvi+TBLDSneFH2luJMkJbeA=;
        b=F9bBLjmV2zfaewG7J2MPXMhrxA8jIdBjjg9KTYMrV6BvsgAMEts/UQdTuxmbiXZQ46
         iNOnCCbvmofNJjzKLGAxPpHwOPCto8NSwdWISt0xnSLQmEGqZ59F/RsIqK1MbRZq1g1W
         vFF2KEQkoLXJYmKGyMtCiIB4M3IAFLyUlUo7aMpnbv/Cd6NZpeXkypGqrIf8K7UzuHD5
         Zq01udaR7Lw2nlH+wQ5QYN3bCsqfd9Qt8+M6sv3HaaDaS0Hqkgu29ch+EdmTjsbEPOpm
         U2goxOUEcz+WxNJ4Q4dKwn5Uvn7MYpqxhGn3RzC2VVydraIdJCFJpks47b/m+Xk/qSjN
         tHcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MBKJbuMr;
       spf=pass (google.com: domain of westernunion.benin982@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=westernunion.benin982@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aU4kMYhHw41jp5VmF3iOBvi+TBLDSneFH2luJMkJbeA=;
        b=qA+fptZHvT3afYO7OhXAiUg4nJLMxNCoR5iI4SfaoAy6kVh8fBrJjVSIT0JXCYJ0HS
         IDbMI3qactdlxxs4IulKVP4+zwYNcdVMd2BwU5sXdE6ZiSpWNTKiEMohoSU0r7Q56l1A
         VMSW8Vai2PJ5d51nHxr1e+y7/4rbgTUEbx0N8irkf/MyzYkRpG76GMfHCj+PyhEQzEOn
         vymEYrWG8MjVO5FmXHRekHbr9Kr6mmy/96MG6Ms49ZxPUZ1TDirdvaYdB+V+RSJl7lZc
         OEB9wRPS/HrcragOXR4A0Z4VEuujFeu3GVdg8k5z0FfTWqXwTE493dDjVxP8OjHnuzP5
         xzDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aU4kMYhHw41jp5VmF3iOBvi+TBLDSneFH2luJMkJbeA=;
        b=gHQS+AHXnmBZCHvOuUJFysjwo8uOVsWDpUlNO9BQDlaA3O8PL4/l6NKntB9jECw1XZ
         UO9aDTIIXrZOtHDKQy/hTEJxDqj2iyDZq5FC1hG6Y4/eOecc/weeUr2hCeEFcNu0X6eq
         J5Ux9qoqy13QO/tJtHqLUAUsNb9UqzAHljF63jwH0dOFy2iFdVBGIhVI26Pv3hOnv/W4
         Vx4A8nzQaMewxPRC2rl5cymkVHa2Wq+GdWNJvIAMqMnebfBZDsfe9gYVGwLcbm9Ti3G5
         1xySg9FoZ+xkQUvRg/1DrDgH1rEPoXngIaNDf3924GI+2GWSk9hlzxnKcbOllt0fPbmH
         x87A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aU4kMYhHw41jp5VmF3iOBvi+TBLDSneFH2luJMkJbeA=;
        b=AhUX2WgSF4pDXnRT6Rpp8+5xMt3C/UeSnjn+5gxWLovzZAmnUeob97HP3nvM5m7VOH
         31U4thtzRY4YnijTHxOtH55uaQaupQYE2G+SW0QL+cXM1nlJXqi5mLUb9zzBooQtZ2Vc
         AXVFIzlUcRf1ppwcTt9eOg6uA9/U7nOSvWYELyFAuWj38AGzCVGLq9TPWHEXBk3RQYDB
         D0EXd4+tGtfIh8BVgmCRMEkY+wuPBD1f1jHYg2azuYkEOEqB69y95CiUzxJh5UPVD9N4
         3qNvy2R6xsJx9hLJM7WZ9/lmifvFW8sYPenpl0iTDNWM4HHdorEUZP1OHMCxTLfDqmlg
         D3lw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAV+8N9b3DVrD91Rg6A0tCLiAG65+N8rdhbzkXJ/Nt7qCbx0qPmP
	u0AKAKJmjj8ATwQ095UzHe0=
X-Google-Smtp-Source: APXvYqw3f3etwz37qF4Ojawohl1bHzvEssCq75bbbkuevFy5SAx4jovXilThJ4XOzmt42aPvO0627g==
X-Received: by 2002:a25:4502:: with SMTP id s2mr57114173yba.507.1564159528155;
        Fri, 26 Jul 2019 09:45:28 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:3741:: with SMTP id e62ls6979217yba.12.gmail; Fri, 26
 Jul 2019 09:45:27 -0700 (PDT)
X-Received: by 2002:a25:c544:: with SMTP id v65mr60593981ybe.206.1564159527853;
        Fri, 26 Jul 2019 09:45:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564159527; cv=none;
        d=google.com; s=arc-20160816;
        b=d7HCwxsgYoTSAmQv3wxleYbNbk3KnHnQ2XsG84oN8y3z24dQGud5CTXU3BNXpFzy2S
         Y9ENzGbuthHJeKmw7GCY/y0Jg9W7OoenerQ5qtQXOvCLy1ENNTI7FnUKHDuB+eR4uMqx
         KnOEiCk03P3BtsXDPPbrCwyNasqZLvji5l/VPqqWGEKspNhL2ln+aEFzhF7SknSJORf3
         rFoGbxLKD2z81w1TUC8z0HZ1qV8mjT1zsy32skM73wHnzc6GWdTvw/Qjj9FYxDEGhGfd
         7yaWQM7NT2EVaMNOi+wElO1ZVUUD5ESeM236zd58yw/AjP7YTcK8NXWuo9QdI3qWtLy6
         +Big==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=qaOWGs23G49TWwws7WjjdoCv06+sXW9upizbWmsREGM=;
        b=EeWhcPSGdQTMBBKJVFua+bROFutG+F30+BqpZwIrETyzi7nCs8yLce7aPKVWycG51f
         OkxsiIYkQQx/KIKjESmUxBD6uyWYeS4NU/WoJo2k9jyAECrHHtxpRfZ0J0V2LxjeqrVP
         U38LM1k9W86oLylG8sm9wO4BL2IS98LDguCVTipnHyALcZvSPkz8+qrHq4qZ7+196YDf
         VrbbwEIr4MIyC8c0bOGvf9H4+u/JbNPFQYhz5r9/R3iR+f9RRr/Jlo4gnaBhsK/hiY0j
         6ZddMvz+/fp3pCCqrlNilpjzHmTHgRqqZPOMD+SZbax+rcukXUtXLWmUtK4lsBiKksMy
         yztw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MBKJbuMr;
       spf=pass (google.com: domain of westernunion.benin982@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=westernunion.benin982@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id t132si2518851ywc.0.2019.07.26.09.45.27
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 09:45:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of westernunion.benin982@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id h21so53161633qtn.13
        for <linux-ntb@googlegroups.com>; Fri, 26 Jul 2019 09:45:27 -0700 (PDT)
X-Received: by 2002:ac8:4252:: with SMTP id r18mr6404984qtm.357.1564159527359;
 Fri, 26 Jul 2019 09:45:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aed:3544:0:0:0:0:0 with HTTP; Fri, 26 Jul 2019 09:45:26
 -0700 (PDT)
Reply-To: dhl.benin2019@outlook.com
From: "DR, MOHAMMED BUHARI, PRESIDENT OF NIGERIA" <westernunion.benin982@gmail.com>
Date: Fri, 26 Jul 2019 17:45:26 +0100
Message-ID: <CAP=nHBKv0J2KVfmfnQs7YrrDs_VuL_F5x-ghM0J6qN3=fYF1qA@mail.gmail.com>
Subject: Attn Dear Atm Card beneficiary. GOOD NEWS,Shipment number:
 4Z69536197319960 Content Packages: ATM Visa Card, amount of $18.5Million
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: westernunion.benin982@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MBKJbuMr;       spf=pass
 (google.com: domain of westernunion.benin982@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=westernunion.benin982@gmail.com;
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

Attn Dear Atm Card beneficiary.

GOOD NEWS,
This is to inform you that i have paid the delivery fees for your ATM
Master Card
I paid it because our bank director stated that before, they
So contact Dr. William Roberts, Director DHL Courier
Company Benin to receive your delivery ATM Visa Card amount of $18.5m US Dollars
It is shipment was registered to your addres.
Contact the office now to know when they will delivery arrive to your country

Email id: dhl.benin2019@outlook.com
Tel/mobile, +229 99652699
Contact the office now to know when they will delivery arrive to your
country today
Shipment Details
-----------------------------------------------------
Shipment number: 4Z69536197319960
Content Packages: ATM Visa Card amount of $18.5Million
Scheduled Delivery
Remember I have paid the insurance and Security Keeping fees for you
But the only money you are required to send to this company is $125.00
been your accurate ATM Visa Card clearance Fee before they will effect
the delivery to you.
Send the required delivery fee $125.00 only to the DHL Office on this
information
Payment is to be made via Western Union or Money Gram transfer for
security purposes.

Receive's Name---------------------Alan Ude
Country-------------------------------------Benin
City-----------------------------------Cotonou
Quest-------------------------------Honest
Answer----------------------------------Trust
Amount---------------------------$125.00 only
Let me know once you send the fee today okay.

Blessing upon, blessing upon, blessing upon blessing upon,God has
chosen you for testimony time,
I wait for your urgent reply

Sincerely
DR, MOHAMMED BUHARI, PRESIDENT OF NIGERIA

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAP%3DnHBKv0J2KVfmfnQs7YrrDs_VuL_F5x-ghM0J6qN3%3DfYF1qA%40mail.gmail.com.
