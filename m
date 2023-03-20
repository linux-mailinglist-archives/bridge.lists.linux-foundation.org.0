Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 942346C1110
	for <lists.bridge@lfdr.de>; Mon, 20 Mar 2023 12:45:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43DBC81836;
	Mon, 20 Mar 2023 11:45:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43DBC81836
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=C8obbCNO
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hIi3eI5dy4QQ; Mon, 20 Mar 2023 11:45:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id CD8EF8187F;
	Mon, 20 Mar 2023 11:45:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD8EF8187F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 64191C0089;
	Mon, 20 Mar 2023 11:45:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CED64C0032
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 11:45:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B709C4156A
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 11:45:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B709C4156A
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=C8obbCNO
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CNQtbtgGK4fu for <bridge@lists.linux-foundation.org>;
 Mon, 20 Mar 2023 11:45:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59A7F415DC
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 59A7F415DC
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 11:45:13 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id
 qe8-20020a17090b4f8800b0023f07253a2cso12079479pjb.3
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 04:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679312713;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=2EdCdWaxl6aSDm2/QNnErzsl1SoS7RrMeG7Y44iKUtc=;
 b=C8obbCNO7LejGk5rUhOzu1LitH8G2CvYqXpW3dW3Oedqzodtr0rk41gi7CdYDAge5j
 oVRhkfHNTWVF07feFWtcK4fjvG1Cw8xPjJ/yb+jwE9eQmxViwPZfCvWGAuSHWMEnGQyh
 w2nkV8EndlS0GjJNT/xy16JZhB9KQE9tqA8EwY5UajOpBYbi8M6u3UCtR9BTu8sQR030
 v48qDfGg0zjHpIl1yLuMfT44LUxd8c/BOvTMkR7myfFgdhFt1oll9MAwbyP8j1s9Wv2+
 +ta6yfTTS9m0S57Yxsl5jpMXMUs+tzI3oQdq/xwBLpeDdbYvBcVY6KwZnC1nE9NrOi6m
 3rew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679312713;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=2EdCdWaxl6aSDm2/QNnErzsl1SoS7RrMeG7Y44iKUtc=;
 b=Zdbqq0fTbrPUBEaU4s60VAyBWBkoAxwOK25iJgyFMXpJpCULCQkVX2RVERhwLpA4a4
 yCjUOqj6eAyInXuxuqiOW09Ze9VY+Vs4j8Zxyyiu6h0KgbtRYED1Nen/f8AaBM96GRka
 noNmONwQaUp5AEv9cnEmyny2s5DTmxfbVSehKD8fz/wHlFC4+xwEbqiIgdwSImi9Ae1c
 2S9MJtOayH2XrNJ4orLt6xZBYTKB8J0qhzyoDVd0h9hzcuIHcoewfZZrvjkcAYTOYI5l
 N9AMtkwsLjCAZ0iuE+3PUmTpB8evjLgXPfNKbT3XXE/5ExvWoJ4mkiQwk19FLecvDf4R
 WXIw==
X-Gm-Message-State: AO0yUKVPS8mJ/jirwDH8AG0CgwLrSsnpeK1T5NGEQlVCgzHlhstuqOH/
 tXbgMMK7y4WM8pf3sEa1+BS/5jsJvj5vDh477PI=
X-Google-Smtp-Source: AK7set9lsKgECwAaF4Mi4ekuWPRLfs3oBAOMq5N51WI+PAYsScCs3n44HDIOR65QZyUd8NRcpIYl4X0qyGp2Zd9869A=
X-Received: by 2002:a17:90a:e38b:b0:23d:33e5:33ec with SMTP id
 b11-20020a17090ae38b00b0023d33e533ecmr4781688pjz.1.1679312712605; Mon, 20 Mar
 2023 04:45:12 -0700 (PDT)
MIME-Version: 1.0
From: Ujjal Roy <royujjal@gmail.com>
Date: Mon, 20 Mar 2023 17:15:00 +0530
Message-ID: <CAE2MWkm=zvkF_Ge1MH7vn+dmMboNt+pOEEVSgSeNNPRY5VmroA@mail.gmail.com>
To: roopa@nvidia.com, razor@blackwall.org, nikolay@nvidia.com
Content-Type: text/plain; charset="UTF-8"
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Kernel <linux-kernel@vger.kernel.org>
Subject: [Bridge] Multicast: handling of STA disconnect
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

Hi Nikolay,

I have some query on multicast. When streams running on an STA and STA
disconnected due to some reason. So, until the MDB is timed out the
stream will be forwarded to the port and in turn to the driver and
dropps there as no such STA.

So, is the multicast_eht handling this scenario to take any action
immediately? If not, can we do this to take quick action to reduce
overhead of memory and driver?

I have an idea on this. Can we mark this port group (MDB entry) as
INACTIVE from the WiFi disconnect event and skip forwarding the stream
to this port in br_multicast_flood by applying the check? I can share
the patch on this.

Thanks,
UjjaL Roy
