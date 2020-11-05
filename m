Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4CE2A742A
	for <lists.bridge@lfdr.de>; Thu,  5 Nov 2020 01:58:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 26EDE854C0;
	Thu,  5 Nov 2020 00:58:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8RklLqtWBHEb; Thu,  5 Nov 2020 00:58:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 562FA854E3;
	Thu,  5 Nov 2020 00:58:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 44C90C1AD7;
	Thu,  5 Nov 2020 00:58:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 35546C0051
 for <bridge@lists.linux-foundation.org>; Thu,  5 Nov 2020 00:58:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1B8972035D
 for <bridge@lists.linux-foundation.org>; Thu,  5 Nov 2020 00:58:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3tJsRK9ksciM for <bridge@lists.linux-foundation.org>;
 Thu,  5 Nov 2020 00:58:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 583512035B
 for <bridge@lists.linux-foundation.org>; Thu,  5 Nov 2020 00:58:38 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A359A2072E;
 Thu,  5 Nov 2020 00:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604537917;
 bh=OvKVeunpCGu7hkS0Lk0dXb/miDXw7CVsk1xe7Gi6Qiw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SjK+bbDxrfWtLRGXpSlGTTFnkBRgQDjTO0H7YSr7f3VKI2D0Y5vEreIHsUM9haPap
 yFIorjlP3NsAwMbEh+2BLIA4MiGS9O5rRLSnC1GbFmslkuODVNZGP/eSswlXjpPUub
 n2/C3ZYUt9KpjBgdlBwa0RTPIVW2wDtRfO4kvqmg=
Date: Wed, 4 Nov 2020 16:58:36 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <20201104165836.4f0f721d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201103172412.1044840-1-razor@blackwall.org>
References: <20201103172412.1044840-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 00/16] selftests: net: bridge: add
 tests for MLDv2
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

On Tue,  3 Nov 2020 19:23:56 +0200 Nikolay Aleksandrov wrote:
> This is the second selftests patch-set for the new multicast functionality
> which adds tests for the bridge's MLDv2 support. The tests use full
> precooked packets which are sent via mausezahn and the resulting state
> after each test is checked for proper X,Y sets, (*,G) source list, source
> list entry timers, (S,G) existence and flags, packet forwarding and
> blocking, exclude group expiration and (*,G) auto-add. The first 3 patches
> factor out common functions which are used by IGMPv3 tests in lib.sh and
> add support for IPv6 test UDP packet, then patch 4 adds the first test with
> the initial MLDv2 setup.
> The following new tests are added:
>  - base case: MLDv2 report ff02::cc is_include
>  - include -> allow report
>  - include -> is_include report
>  - include -> is_exclude report
>  - include -> to_exclude report
>  - exclude -> allow report
>  - exclude -> is_include report
>  - exclude -> is_exclude report
>  - exclude -> to_exclude report
>  - include -> block report
>  - exclude -> block report
>  - exclude timeout (move to include + entry deletion)
>  - S,G port entry automatic add to a *,G,exclude port
> 
> The variable names and set notation are the same as per RFC 3810,
> for more information check RFC 3810 sections 2.3 and 7.

Applied, thank you!
