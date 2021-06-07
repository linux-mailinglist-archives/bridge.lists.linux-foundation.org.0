Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE0F3A0EA3
	for <lists.bridge@lfdr.de>; Wed,  9 Jun 2021 10:17:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 83B25402E0;
	Wed,  9 Jun 2021 08:17:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5nWGyFKErqpo; Wed,  9 Jun 2021 08:17:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id EE77D402AF;
	Wed,  9 Jun 2021 08:17:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A9678C0024;
	Wed,  9 Jun 2021 08:17:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 51A36C0001
 for <bridge@lists.linux-foundation.org>; Mon,  7 Jun 2021 15:59:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E6AB40188
 for <bridge@lists.linux-foundation.org>; Mon,  7 Jun 2021 15:59:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4MCArQA-_4Mk for <bridge@lists.linux-foundation.org>;
 Mon,  7 Jun 2021 15:59:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 858644002B
 for <bridge@lists.linux-foundation.org>; Mon,  7 Jun 2021 15:59:47 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id g18so19003815edq.8
 for <bridge@lists.linux-foundation.org>; Mon, 07 Jun 2021 08:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=f1Picyv92DBNFnyWc2siMe7sp2wXeSWEx4iNIZ5Pf5w=;
 b=dL07qiP7TOSZbZOSw8ZTFQlXosJ0Gy144toG1HMQyHTlWp4YQUPmaSUFHO0lwsieuh
 d8JLY1Lg25QAIh12ny6aD6fwUZJJxLDUzQ9br3xZwkWaOwSbt+A7uX1Kq/dm8CHps7l6
 ortqszK9HV3wVO+D0dUuMDY91hHI1RyM8nS6iLgoB+Myc/iNOITMFjemMokj+cci4806
 TYjNUXZ3/Z7Cmn6czunKKBUVqrR96xi1hd1La62JcZ9wzoCshtcmiyTOm0TZ3ec3fYzS
 06nCd6AbMQTC4zUANpewzOXlT3SGiAkr909gTmzaaXn/lpTlgNR7fhquopggpWpCfDjP
 LB8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=f1Picyv92DBNFnyWc2siMe7sp2wXeSWEx4iNIZ5Pf5w=;
 b=BUn9ENmJw5UiShrZzqPdSNUTaNP/jNS5OfFoET64Yp9WmPNPZkp1DlTfFhwfCxoZpk
 9InHIS1ISiLuV0j1o04gTRPLW5GiuywpPsajvPb0Gw7j48cjD0KD4JorWXf/WiXe+Uvk
 1O8JsOeFjUsMM5OjqBSilD349ejqCgO+SMmqQHGoiy0pzJ4PhIWSMaTZhFH9UQantH7s
 BkhKXdMyc4G4gm0AeMDNAx6SkUFQKupDU8Kk7gdWwOrUA6OSoC5Xy8iCOxLakhqVealn
 X234jg6W8DMbZCH9pXxRtftyzQfKZiNSyf5HA3sF4QkihgXmEbP9qtTIuv/Njg4fJwNB
 xBtQ==
X-Gm-Message-State: AOAM530to5HdmnfUGO7ruaknT8gLyRLCQd1NkO9Hrnkz973c6igAbgc0
 7AG/FRK0qylSmGcpR0Tb9ymz5DyuW2hm+FXT7CU=
X-Google-Smtp-Source: ABdhPJw2VAWCKse4tSPNvYI+lLRKFUw2bKeeeE6O+RzAW4YHEVLLICwCcpxLxxVbWJGDW1CeChfB831LSe0kn7R6QsA=
X-Received: by 2002:aa7:c40f:: with SMTP id j15mr19816194edq.169.1623081585663; 
 Mon, 07 Jun 2021 08:59:45 -0700 (PDT)
MIME-Version: 1.0
From: Ujjal Roy <royujjal@gmail.com>
Date: Mon, 7 Jun 2021 21:29:34 +0530
Message-ID: <CAE2MWkkL9x+FRzggdOSPcyFpguwP9VuQPD9AJWLTsfLzaLodfQ@mail.gmail.com>
To: Stephen Hemminger <stephen@networkplumber.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Wed, 09 Jun 2021 08:17:02 +0000
Cc: Kernel <netdev@vger.kernel.org>, bridge@lists.linux-foundation.org,
 "David S. Miller" <davem@davemloft.net>, Kernel <linux-kernel@vger.kernel.org>
Subject: [Bridge] net: bridge: multicast: Renaming of flag
	BRIDGE_IGMP_SNOOPING
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

Hi Stephen,

Can we rename this flag BRIDGE_IGMP_SNOOPING into something like
BRIDGE_MULTICAST_SNOOPING/BRIDGE_MCAST_SNOOPING? I am starting this
thread because this BRIDGE_IGMP_SNOOPING flag holds information about
IGMP only but not about MLD. Or this is not a common name to describe
both IGMP and MLD. Please let me know about my concern, so that I can
change the code and submit a patch.

Thanks,
UjjaL Roy
