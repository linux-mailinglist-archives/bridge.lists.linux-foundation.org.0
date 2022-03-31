Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 480214F1085
	for <lists.bridge@lfdr.de>; Mon,  4 Apr 2022 10:11:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 871A060F95;
	Mon,  4 Apr 2022 08:10:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id buYAzsDPeusZ; Mon,  4 Apr 2022 08:10:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 1C80760FA8;
	Mon,  4 Apr 2022 08:10:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2660BC0087;
	Mon,  4 Apr 2022 08:10:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3DF10C0012
 for <bridge@lists.linux-foundation.org>; Thu, 31 Mar 2022 09:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1672741D2E
 for <bridge@lists.linux-foundation.org>; Thu, 31 Mar 2022 09:17:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kuc4k6qK_kgB for <bridge@lists.linux-foundation.org>;
 Thu, 31 Mar 2022 09:17:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 71FCB41D1C
 for <bridge@lists.linux-foundation.org>; Thu, 31 Mar 2022 09:17:25 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id p17so22839817plo.9
 for <bridge@lists.linux-foundation.org>; Thu, 31 Mar 2022 02:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=ih8LLR4BU+XOLlBsaeGuInD35g84knZ55fEb+sWwQLE=;
 b=m9JY1T2fVJqS1fYJnX1Lbbcho5BEeSvJ1p2iErBWUKphqwHPfoBqWO2JuqjqBkcoOr
 PhdBsvQEtQEksesBExzSODztEFHY/06NnfOTXsWOfhxz1AsijLl24rnJolO3zP5IEjcG
 1b6OVr/lWoGBdZGFaaaINISsCVnsolB5EZKdx4uQu2c9d7ISDsrjHq2VXcNh6jKwLeEj
 jngwNN7AW3Y5Fa/i83q9RtjecmjAuN3Ja1WgzWShQ9+B4QH5r+JcnGLP2U5FLSV2KP24
 auOI9ZL7exC5GSjNDcE49mf4SvlXh7ntbfVGGExwFPdmfCSu9h172QOxxDymZ4F8M3MN
 i8ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=ih8LLR4BU+XOLlBsaeGuInD35g84knZ55fEb+sWwQLE=;
 b=4eEhhfjdgtcQLkmX9P3mwfn8DupLeizHurMOky+cHXesvTRpRrwRpSY3ZaiNkRCL/A
 UkUFj8aJ1CEmWjDA5hozlBWxoby4EqMfO5YblDB2hOlwvtT3A9niSNMeQEdYsbJ/we2F
 NdQMiNMO4Tb4nwfHTOaB0nNnrAWfm7vNILpoYPZeGo0vfFoeJDF0n6wGdjoGeFsB5YMR
 hzAPg8YqCKFkh9DUFgWsAT5Q8DzaKwGkBD2sqnJN2PPxa6ddJg27X+uzvYK1ml9ohFKb
 nqlRxwa7/GOwVZAaDbVw6Oc3zHPPgmEPgKrB8x/1cMGPIfKo8E3bDumtgEEdfljSaj4Z
 c6sA==
X-Gm-Message-State: AOAM532c6bVRn3iNJ6ajhFHvbSMK34iXLDSv1Fd+6PeI1ixm+P3oIxhz
 CvI/1Y4T8FeaoxsEply50Eha6g7NpiaTjCrgTuk=
X-Google-Smtp-Source: ABdhPJzKLJUPokJbs4h+c3Oq6l9ZAiSIKUwRUv2wqDANefTVmXU1Cob41W8qK7NWs4qdjGV4kGgd8xQGVq+/XawulLc=
X-Received: by 2002:a17:902:d709:b0:155:d473:2be0 with SMTP id
 w9-20020a170902d70900b00155d4732be0mr4290917ply.151.1648718244490; Thu, 31
 Mar 2022 02:17:24 -0700 (PDT)
MIME-Version: 1.0
From: SPYFF <primalgamer@gmail.com>
Date: Thu, 31 Mar 2022 11:17:13 +0200
Message-ID: <CAAej5NbAYjLSTBhS5Xcv+zztdhECoZWYr1Kxnyut=NSVQJ+VOg@mail.gmail.com>
To: bugs.a.b@free.fr
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 04 Apr 2022 08:10:53 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 nikolay@nvidia.com, roopa@nvidia.com
Subject: Re: [Bridge] [bridge]: STP: no port in blocking state despite a
 loop when in a network namespace
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

Hi!

Can confirm this is still the case on 5.15 too.

Ferenc
