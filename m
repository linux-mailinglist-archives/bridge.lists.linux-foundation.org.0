Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A0E535AE8
	for <lists.bridge@lfdr.de>; Fri, 27 May 2022 10:02:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76909615F6;
	Fri, 27 May 2022 08:02:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s7BVE91LtsqQ; Fri, 27 May 2022 08:02:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2D56B615F8;
	Fri, 27 May 2022 08:02:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 27820C002D;
	Fri, 27 May 2022 08:02:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 45E88C002D
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 00:10:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 333E160E02
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 00:10:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dTsH7GoQwScY for <bridge@lists.linux-foundation.org>;
 Wed, 25 May 2022 00:10:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com
 [IPv6:2607:f8b0:4864:20::e33])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 94813612A8
 for <bridge@lists.linux-foundation.org>; Wed, 25 May 2022 00:10:51 +0000 (UTC)
Received: by mail-vs1-xe33.google.com with SMTP id h4so8816644vsr.13
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 17:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=VrovhhWoMNlJtcPoxWssPdIzd8lbQxUCWXPwB/Cm8i4=;
 b=ESSECpERcF9jcVAIhDlJLfOrijKchwW4m6kzvlfAkBR6+gan5l/wukmHSZFKdEvbDC
 /vHqaraRbUkPBCY7Z7Qi5gVabiHMyMg3po0SToKYXkGnnnsA7Xq1kLOjravTnXFHCXWm
 A5GAHwtfRJEGpYG+/o1Dck0wz9L0nXYk9Iq+FG/0239nJsjxZSGxt0gdOYrHF3ELdDyP
 JWl5CQZuFlaiISr8Ue+SMo7xDzCb5vc0TRa44kEgGho58+ny8A5HDkaJPPpGIp7a2wdJ
 FrDLIa4BE+/BByIq6HislioJIpSOMYZPlJ4qiz7KWbCNMJPz89S2TPRoOKe0YLNBnlzW
 Bm1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=VrovhhWoMNlJtcPoxWssPdIzd8lbQxUCWXPwB/Cm8i4=;
 b=bAcIogFdhW8Wo8XQl6a0gPflKgZHOs2si/DQ+sSsl9pIBxNh8xwd/ng1Y/kDsKoTKv
 zfEr0wUCxwa7h6OrPHYs5rQiPlVhk3Fw8N5009gwNRWeENyB0qCkm+WIuB/0tdclEDn6
 S41iVDg6xV8LfY9bSkrTaSYhSMF4dLTsUz+BiTT4/aUhvZ5V5oFXpWcm4sJehUXtA/go
 wyg23aCkfxs5ZsmVofeQQXCdOxPgg/Rp42JPnZpMvGFPFfUBsXQg+T2PyosJO84X1x5E
 lOEhBCOJWFEpunJ6+SZVe3OliMmeXDZdbIF58qC70tcgbThzYY+DW6eytbzaOF2c+rnY
 qD+A==
X-Gm-Message-State: AOAM533o0Zl8Lmf+k8uBrQCuHKyW9UVHVKdPOTe89WNL0NVhuexlLNsV
 z8fHavcGwTqiQ5f/9TFg9ZbBhLwiBeFRxUGSk82PDPVw4a9qjg==
X-Google-Smtp-Source: ABdhPJwoaUIimGQ25ji7xTcTN/M2OAVjbXPG8mx9KNWNuLsihNBNRQT+Bt8xpZIJnj5d72iXWU3/8eqtM9P0Cimqwko=
X-Received: by 2002:a05:6102:6cc:b0:337:cd03:5fbf with SMTP id
 m12-20020a05610206cc00b00337cd035fbfmr3767639vsg.24.1653437449645; Tue, 24
 May 2022 17:10:49 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?2K/Ysdi62KfZhSDYp9mE2LnZhNmK?= <derghamali444@gmail.com>
Date: Wed, 25 May 2022 00:53:15 +0300
Message-ID: <CACP1nsOcKcb2pnHLArEF3Q2yoMmLRErP5pDo+YkYBra8G+wWwg@mail.gmail.com>
To: bridge@lists.linux-foundation.org
Content-Type: multipart/alternative; boundary="000000000000d8331805dfcae740"
X-Mailman-Approved-At: Fri, 27 May 2022 08:02:10 +0000
Subject: Re: [Bridge] [PATCH v5 net-next 05/10] net: switchdev: pass flags
 and mask to both {PRE_, }BRIDGE_FLAGS attributes
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

--000000000000d8331805dfcae740
Content-Type: text/plain; charset="UTF-8"



--000000000000d8331805dfcae740
Content-Type: text/html; charset="UTF-8"

<div dir="auto"></div>

--000000000000d8331805dfcae740--
