Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9359825E3DD
	for <lists.bridge@lfdr.de>; Sat,  5 Sep 2020 00:44:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DE64486F02;
	Fri,  4 Sep 2020 22:44:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XG8ZEVc7MJi0; Fri,  4 Sep 2020 22:44:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 37B2C86968;
	Fri,  4 Sep 2020 22:44:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1CB8FC0051;
	Fri,  4 Sep 2020 22:44:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 22515C0051
 for <bridge@lists.linux-foundation.org>; Fri,  4 Sep 2020 22:44:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0D1ED875CF
 for <bridge@lists.linux-foundation.org>; Fri,  4 Sep 2020 22:44:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r26-tVtuW66O for <bridge@lists.linux-foundation.org>;
 Fri,  4 Sep 2020 22:44:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 60B6A875CE
 for <bridge@lists.linux-foundation.org>; Fri,  4 Sep 2020 22:44:15 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id l191so5037368pgd.5
 for <bridge@lists.linux-foundation.org>; Fri, 04 Sep 2020 15:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7w7+tvnW1G+Cle3enHiPY2ZUGZs43aoQoOoR2xnTfDk=;
 b=qQBpX7EqHscfN/xttnOIq269jQJMhj2p5YKvSz2dLaR5FXlmfk12gczTp3DWFoO/qt
 7tcvyb3ikdBmtwLr802xJ1ToVZPpjfy904wMElH3hQzVccak/k+9zFg0wCTJjZddGDbB
 xaxkaogbPyLlh+OYjSwI4qwbzT3D9RkeKgrgC8yAmOOvLHphBHx93fBP1iK47HYk2C4Y
 sxipObGsP3wAE8aM/O44cj8+qn1SGc48Q7r8X79oDvMR+zpvZ3hs7eHEkMlPW1WgZ+lp
 FLZKWhg1+o4pMBIrH5DcZApKoxeWvWDNHxXe05FvKLWr7q07292BhPKSC9M6xOtYYb6+
 wgDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7w7+tvnW1G+Cle3enHiPY2ZUGZs43aoQoOoR2xnTfDk=;
 b=pZ73g3o8sVw8KYt6BfWCRpKO9dKjWY92U0YhPcbTrblnVmIFJ5RoM2+UKsijopIzVc
 5ElFuxQqOy50Jj0wntvqbNzWWXSVicQ8CFeB/YyU/kj2thw1hMOo1iyLj7zzR9VfcS3b
 SwxdzCjnhyJjXrRPPsuST4Eg110UY6VTUdiZ3pVt32/HI1grpOTgGz5R3aIZl+3sWpul
 BcBoX35LWJVgQcVqTUfUQAQQhywmSIOvflM6+Doz5PLwttduHIN/bTuW9IOkJHZOymed
 EZJZPus5GVrE7rPQDR5p5c1ist9rwTkJWIRkr6Wj1iAKwE2583hKuTtBl6EzOGfBGogc
 /l/A==
X-Gm-Message-State: AOAM530ZGDpTKx/wqRZvA+ydOmhS15W5dkIalMN5x2MAGWIAedMKrQls
 lCTYoCF2LX47eI5v6h+X8FsmpA==
X-Google-Smtp-Source: ABdhPJzWWKRj+bDiS1qmtSMkbPL1RAaTzGIy5yzHODOnqUWlpjXdHPYbYeDZw4QO8vAuAcrVeckjPA==
X-Received: by 2002:a65:6282:: with SMTP id f2mr9117908pgv.163.1599259454873; 
 Fri, 04 Sep 2020 15:44:14 -0700 (PDT)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id kf10sm6049017pjb.2.2020.09.04.15.44.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 15:44:14 -0700 (PDT)
Date: Fri, 4 Sep 2020 15:44:06 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Message-ID: <20200904154406.4fe55b9d@hermes.lan>
In-Reply-To: <20200904091527.669109-1-henrik.bjoernlund@microchip.com>
References: <20200904091527.669109-1-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 idosch@mellanox.com, jiri@mellanox.com, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, Horatiu Vultur <horatiu.vultur@microchip.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH RFC 0/7] net: bridge: cfm: Add support for
 Connectivity Fault Management(CFM)
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

On Fri, 4 Sep 2020 09:15:20 +0000
Henrik Bjoernlund <henrik.bjoernlund@microchip.com> wrote:

> Connectivity Fault Management (CFM) is defined in 802.1Q section 12.14.
>=20
> Connectivity Fault Management (CFM) comprises capabilities for
> detecting, verifying, and isolating connectivity failures in
> Virtual Bridged Networks. These capabilities can be used in
> networks operated by multiple independent organizations, each
> with restricted management access to each other=E2=80=99s equipment.
>=20
> CFM functions are partitioned as follows:
>     =E2=80=94 Path discovery
>     =E2=80=94 Fault detection
>     =E2=80=94 Fault verification and isolation
>     =E2=80=94 Fault notification
>     =E2=80=94 Fault recovery
>=20
> The primary CFM protocol shims are called Maintenance Points (MPs).
> A MP can be either a MEP or a MHF.
> The MEP:
>     -It is the Maintenance association End Point
>      described in 802.1Q section 19.2.
>     -It is created on a specific level (1-7) and is assuring
>      that no CFM frames are passing through this MEP on lower levels.
>     -It initiates and terminates/validates CFM frames on its level.
>     -It can only exist on a port that is related to a bridge.
> The MHF:
>     -It is the Maintenance Domain Intermediate Point
>      (MIP) Half Function (MHF) described in 802.1Q section 19.3.
>     -It is created on a specific level (1-7).
>     -It is extracting/injecting certain CFM frame on this level.
>     -It can only exist on a port that is related to a bridge.
>     -Currently not supported.
>=20
> There are defined the following CFM protocol functions:
>     -Continuity Check
>     -Loopback. Currently not supported.
>     -Linktrace. Currently not supported.
>=20
> This CFM component supports create/delete of MEP instances and
> configuration of the different CFM protocols. Also status information
> can be fetched and delivered through notification due to defect status
> change.
>=20
> The user interacts with CFM using the 'cfm' user space client program, the
> client talks with the kernel using netlink. The kernel will try to offload
> the requests to the HW via switchdev API (not implemented yet).
>=20
> Any notification emitted by CFM from the kernel can be monitored in user
> space by starting 'cfm_server' program.
>=20
> Currently this 'cfm' and 'cfm_server' programs are standalone placed in a
> cfm repository https://github.com/microchip-ung/cfm but it is considered
> to integrate this into 'iproute2'.
>=20
> Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
> Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>

Could this be done in userspace? It is a control plane protocol.
Could it be done by using eBPF?

Adding more code in bridge impacts a large number of users of Linux distros.
It creates bloat and potential security vulnerabilities.
