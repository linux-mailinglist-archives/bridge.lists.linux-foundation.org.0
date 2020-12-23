Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3941B2E1DE7
	for <lists.bridge@lfdr.de>; Wed, 23 Dec 2020 16:32:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B67B120421;
	Wed, 23 Dec 2020 15:32:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZEGm3OnpadSL; Wed, 23 Dec 2020 15:32:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id C6E1B20449;
	Wed, 23 Dec 2020 15:32:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B779CC1D9F;
	Wed, 23 Dec 2020 15:32:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D5120C0893
 for <bridge@lists.linux-foundation.org>; Wed, 23 Dec 2020 15:31:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D107785B80
 for <bridge@lists.linux-foundation.org>; Wed, 23 Dec 2020 15:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iAO_jgzTbefE for <bridge@lists.linux-foundation.org>;
 Wed, 23 Dec 2020 15:31:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F306185B2F
 for <bridge@lists.linux-foundation.org>; Wed, 23 Dec 2020 15:31:58 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id cm17so16589975edb.4
 for <bridge@lists.linux-foundation.org>; Wed, 23 Dec 2020 07:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=4ZX/oY/UMh+zpGx1mdoH5h4IbrR1t26jLXfuR6PIHus=;
 b=gUfgl9ha7ZaX82C1DhmTvyl5Reu1sMt8IXJeECjnH1nCWXv+b8NtbsVWmnxpR45HBK
 u4bxL2Hjrv5ljk9QLG6kceFL2lSiJvzcHUANFwblBUWT3clOX5X2Su9S1fZnyLkmLosE
 Xevz3BMSemRImdclS/xbZ5gEmC5fPuPPT1ZeBICtF3oZlQ5KDWllYrJGuLkdF2BUZtEk
 qMZ0/j/o8wazvDsNdoOJpbAYEdSNwIagHJyIuLvxsaFdyMjeKEmStVf0EgviLykkrxZ8
 A6g1OUvG1USwp+UOqpjl1FZ9Fispt91vi8gJeoImli3s9th4KwMk7bEqMrPNjgflgAWU
 WCtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4ZX/oY/UMh+zpGx1mdoH5h4IbrR1t26jLXfuR6PIHus=;
 b=psWLBUWHAHjmib4i3BNIfmEXVBZWHIOJgEaHkd6wddAAnR3G/KWsd9wLhcpSLAG3Kk
 6vYzfd3kZ0U1oKu3sD2hvPZd6q/J6gGvqBGhW8XZPLgkwLPa1SAnFdg3Nzz6m0KBLq8M
 uSjJ2VbUa52oQzCnrjqjZ5xpOf3v6+FdKeAEuQrP/3wQgpsINYpUoXJ+caFo6NWbaM+n
 Hd/2uE1aLbZgT19ki2qd1yQwU/5LSc5C4GPSP+LFtnRksPL88Ja8fgceE2W1ANHfK9vf
 OjSveBr/WSxPNXpq5LTRwF94Q3LCXS4cKj1hkjVOGZvfUpch5EKP9gT16y3nDA9gM7fw
 gi9g==
X-Gm-Message-State: AOAM530ejfTbLFRTgtu9BFVKolDlqOd6YaAZJKtB2FrwwcxM7ILBSWcP
 GfvOXu4tUU533qdCGprTj+w=
X-Google-Smtp-Source: ABdhPJz7qunYCzByIufCe9LefmAJBHO+dxaqq5T6ePnJaklV7S98rLzR9x5Ul5EUKOKyQwge3EVtjA==
X-Received: by 2002:a05:6402:171a:: with SMTP id
 y26mr25771935edu.371.1608737517461; 
 Wed, 23 Dec 2020 07:31:57 -0800 (PST)
Received: from skbuf ([188.25.2.120])
 by smtp.gmail.com with ESMTPSA id d3sm27554041edt.32.2020.12.23.07.31.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Dec 2020 07:31:56 -0800 (PST)
Date: Wed, 23 Dec 2020 17:31:52 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Sasha Levin <sashal@kernel.org>
Message-ID: <20201223153152.zbzgs63dykehwk5x@skbuf>
References: <20201223022253.2793452-1-sashal@kernel.org>
 <20201223022253.2793452-48-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201223022253.2793452-48-sashal@kernel.org>
Cc: Petr Machata <petrm@nvidia.com>, Ivan Vecera <ivecera@redhat.com>,
 Danielle Ratson <danieller@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>
Subject: Re: [Bridge] [PATCH AUTOSEL 4.14 48/66] bridge: switchdev: Notify
 about VLAN protocol changes
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

On Tue, Dec 22, 2020 at 09:22:34PM -0500, Sasha Levin wrote:
> From: Danielle Ratson <danieller@nvidia.com>
> 
> [ Upstream commit 22ec19f3aee327806c37c9fa1188741574bc6445 ]
> 
> Drivers that support bridge offload need to be notified about changes to
> the bridge's VLAN protocol so that they could react accordingly and
> potentially veto the change.
> 
> Add a new switchdev attribute to communicate the change to drivers.
> 
> Signed-off-by: Danielle Ratson <danieller@nvidia.com>
> Reviewed-by: Petr Machata <petrm@nvidia.com>
> Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> Reviewed-by: Ivan Vecera <ivecera@redhat.com>
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---

This looks like a bit of an odd patch to backport?
Are we also going to backport driver changes that make use of this new
switchdev notifier?
