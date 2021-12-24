Return-Path: <linux-ntb+bncBAABB46CSSHAMGQEVSW5K5A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCB647EA26
	for <lists+linux-ntb@lfdr.de>; Fri, 24 Dec 2021 02:25:08 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id i123-20020a2e2281000000b0021cfde1fa8esf2135816lji.7
        for <lists+linux-ntb@lfdr.de>; Thu, 23 Dec 2021 17:25:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640309108; cv=pass;
        d=google.com; s=arc-20160816;
        b=EVvHDpi40dvGaPz3GmlLgPw0FdQyJJAH6mOzxWjl0fw9DoQPEDqdkQD74dCNLDdibn
         wiL21S4r1pwPMGv36ybDQcjYgFilGueHDEqqGnBfSxgXKv8nZrs4N/A25k9gKzIFxBB+
         HGb4mXY8/wi2MqfKCZN3TreT24/kS3gRu7QD0sldrkEuJ2G/VMDJ7tnPMLBsV6h7ccTW
         up3+QhdXK7kbdHukQ74CrW7RS3buYMFNPE4bP9eAI8xzY9hBIMFPGEHDhah/7RPti7AP
         tlyG0dpMLFt6b7BgzC4cc++egv9pwpHsTMZO3p54rYnFb6bwmOS4TnfIq+hUcvx5+JsI
         GUbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:ironport-sdr:dkim-signature;
        bh=YiW8KXQwjcX1xP+UsykSE6/7lLsa8ZslnuwCWXnTrJk=;
        b=COn8QlnM5QPCJIrFVVomb4xOvr/+DjDxDetuzbtDDj0TzERW66S8I1t2KLwcAEoUpM
         SW9xhuABjc9RAsC4YftyUjStSz72u8FFY7JQCZunzXmi0PpJiIhwd5EzulbO4d03o96H
         fpDjIQXPJUVjj5aoDdLV+PMJB5K9TWoblopVUrqGgJ6l5aOWw4107Qid27bMDHmMkoHM
         ps0x9HpIlxwyNKz9u5g0VTn7EdFARVov7knsMC9UEjOXKzbYwbjrZZ4bFIsVyWcjuzE0
         wiEy0v6hd73mphdjc3iww2gTX9Z7lOcsrAZHDLzsbFf+71Dnh7dqeLfp5wmDUbRh6nOs
         DD+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=a0S2RLPy;
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=ironport-sdr:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YiW8KXQwjcX1xP+UsykSE6/7lLsa8ZslnuwCWXnTrJk=;
        b=TMg8ijTsCV4mCPN3Fyfe0esXrGp9bc75+24lY4FwR9zF3sh2JX1lvC3aAoMHlqPUMW
         BgmR5+fhlfDqoJls90PoO7uANCK//3RWCNXU10XhjEeoOOD3kpaew83ha243H6KWdTK/
         qI1Ip/wAG7BdvVWSv8uHYzDxKFP9w874KnY2Ur1189vw85tktasPAAbN41cDd4iWxE+/
         /oWVBaIVvaDIgzNgiyM8RDorMdihI2OEQLjXyBBlQVf2gwlBpK/ed7ALYQJd50O2bGIG
         Mo8lfcgzM7rnE1eOdIHC8fqI2xBcHmvqkFo9EDU5jE/wJrGsqs5BqhdwXCb4zvZnKo3T
         ly0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YiW8KXQwjcX1xP+UsykSE6/7lLsa8ZslnuwCWXnTrJk=;
        b=Jjqhf/ymZ3PmqRFMpY6qOlJcXCe0s81yXxv/6ofI/dxsr/9dqw2RQtCqyKMEa4n7gz
         V5ueY8oSg+1pRUd7DVqzmZiYXmfVdZrN2bz5F4Nr5kfc7y0+jyQiKxXA4DirXHctHrjz
         V7U3Ygvm5asG0mAI0mYXeDUSkr1Gb+31BG1HGpl4b9n0OJFGvKabxtVSXIAgIwcEyaXz
         f0TuVoXcPKvzGfVS6xPwsReM/ca6QaTfOJW8DNaafTXx2/9L+rQbY/McGXiRyBDqMbx4
         rgVcF6FNyWJftCMT3nQLZH6NL4UI+2s7EU/tz62BGJP5AUlF+H1yZjF1fE+Ve+GR5DVk
         LzKg==
X-Gm-Message-State: AOAM533Q/mJZb2CZ0TLkPO+rYfGTx2N7wZYIHe8RFxG32o+Wi4ijAiCd
	6eZI3BJf0tAH5CH1hOgKoWw=
X-Google-Smtp-Source: ABdhPJxf377XLyt5i6Ym199QewlM13fHVlBd2PtjiSfHMhR5J48n+/9c0Lv6NyjJbHe1jhMEO2Zb6g==
X-Received: by 2002:a2e:994a:: with SMTP id r10mr3215981ljj.301.1640309107901;
        Thu, 23 Dec 2021 17:25:07 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:234c:: with SMTP id p12ls98489lfu.0.gmail; Thu, 23
 Dec 2021 17:25:07 -0800 (PST)
X-Received: by 2002:a19:ee12:: with SMTP id g18mr3448134lfb.73.1640309107055;
        Thu, 23 Dec 2021 17:25:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640309107; cv=none;
        d=google.com; s=arc-20160816;
        b=JXuCg4geMr7Oda9i37q6X9nV0H8L1UhYl+l39xbAFNsqM0OROklw1Ab2NgJHmpQhLa
         JTYkk0M1rjyty3SedeTQxbrDrlH0cFI91btImDGh42lU53DH1Hc2F+7XAB/DLiw3Kaqp
         WGsnlaaomIl7M6eg1mI2U2zlqQY/QXyxVq61yXk0Ery2FdsOS1yTsfTodq3bFse7+61E
         7na0zm0r24i3unzvgDYJP6iKNKQdb5+AdZxcAf6S8oIAb3lrZKQr59HNVFJOQnB256gY
         LGNhicVKP8jwjRxkFss8zW5SlPE3TEQkN4SNATZYd+OVUtkiYwycGQPet6MYFgJEaUY6
         iQMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:ironport-sdr:dkim-signature;
        bh=eH5j2gk4+qfcpThzmpINq2V+mb1/o6Jz5opGBKmjQ3Y=;
        b=a7mXwNLW57QUP0GugUr0a+unsVAlTpSEdNYScKaIaz0t5OU6KldCakGm6SvDeKH+cE
         U00Zphf+0tbngYMELRjwQ5cYEdixo4QuCKmsv7L/a9UtWG3g8slWpTvNEyaHJsG6KlGm
         yPxhSJCD+MPNcHXYzqUoYd12n5Ng1c+SDMnybeWlP69kpFn64XZVlLwe8rjqtuPVS0z5
         gZHZYcMIVZOMxcezj6R0zs7sS3Datn8Ji5bmt04b0qDny4VIMmIfsKLh1/fZ8Daolo/Q
         5hWm9gtPWUx0bTn9u0CGL1Q24T9rbB3SsxCbXFNSa5CCdHdnkXjXvQu0rJu6fiGDLGT/
         pvTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=a0S2RLPy;
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.154.123])
        by gmr-mx.google.com with ESMTPS id q2si170721ljc.0.2021.12.23.17.25.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Dec 2021 17:25:06 -0800 (PST)
Received-SPF: pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) client-ip=68.232.154.123;
IronPort-SDR: mm53mf2+zM4KOPbvhHY2bQQhXRQ81TQG9hueu5oC2BINL7CkmXVXzmLI9wRzaJcxOElzl9QR8G
 VNmf1b4ABCpm1YeVY/Z6sqqi+8H0p4ieTvaYVkO+URBMwmPCtd7ECs2LpQz/2VbuJCDI905LIL
 yOD6RFkkEChJB98gC3wwrDor/FNQN5YlVHJAPPVrn/yaZaHB0jaiGwYDCoCKpRpwBLSKcZ1ZBY
 8krfWycGsxPsIOkvGCPOi3MmFHWq75RxIfW3eMebX6JdujJ08JNYjhqUOiut+YChDN9tDn9nXa
 BWnR62u1sV3OqJe/Aq1r6jfK
X-IronPort-AV: E=Sophos;i="5.88,231,1635231600"; 
   d="scan'208";a="80533966"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 23 Dec 2021 18:25:04 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Thu, 23 Dec 2021 18:25:04 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2375.17 via Frontend
 Transport; Thu, 23 Dec 2021 18:25:04 -0700
From: "'Kelvin Cao' via linux-ntb" <linux-ntb@googlegroups.com>
To: Kurt Schwemmer <kurt.schwemmer@microsemi.com>, Logan Gunthorpe
	<logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	<linux-pci@vger.kernel.org>, <linux-ntb@googlegroups.com>,
	<linux-kernel@vger.kernel.org>
CC: Kelvin Cao <kelvin.cao@microchip.com>, <kelvincao@outlook.com>, "Jeremy
 Pallotta" <jmpallotta@gmail.com>
Subject: [PATCH 0/6] Switchtec NTB Fixes and Improvements
Date: Thu, 23 Dec 2021 17:23:28 -0800
Message-ID: <20211224012334.89173-1-kelvin.cao@microchip.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kelvin.cao@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=a0S2RLPy;       spf=pass
 (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as
 permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
X-Original-From: Kelvin Cao <kelvin.cao@microchip.com>
Reply-To: Kelvin Cao <kelvin.cao@microchip.com>
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

Hi,

Please find a bunch of patches for the Switchtec NTB driver.

Patche 1, 2 and 6 fix three minor bugs. Patch 3 works around a minor
firmware issue. Patch 4 updates the method of getting management VEP
instance ID based on a new firmware change. Patch 5 removes code that
disables ID protection to avoid conflict with static Switchtec config
settings.

This patchset is based on 5.16.0-rc5.

Thanks,
Kelvin

Jeremy Pallotta (2):
  ntb_hw_switchtec: Fix pff ioread to read into mmio_part_cfg_all
  ntb_hw_switchtec: AND with the part_map for a valid tpart_vec

Kelvin Cao (3):
  ntb_hw_switchtec: Update the way of getting VEP instance ID
  ntb_hw_switchtec: Remove code for disabling ID protection
  ntb_hw_switchtec: Fix a minor issue in config_req_id_table()

Wesley Sheng (1):
  ntb_hw_switchtec: Fix bug with more than 32 partitions

 drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 24 +++++++++++-------------
 include/linux/switchtec.h              |  2 --
 2 files changed, 11 insertions(+), 15 deletions(-)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211224012334.89173-1-kelvin.cao%40microchip.com.
