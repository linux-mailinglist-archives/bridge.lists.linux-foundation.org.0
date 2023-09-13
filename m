Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 393DD7A4643
	for <lists.bridge@lfdr.de>; Mon, 18 Sep 2023 11:44:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39DF3613F6;
	Mon, 18 Sep 2023 09:44:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39DF3613F6
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=BqCegcpr
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3QaUfidE5TId; Mon, 18 Sep 2023 09:44:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id C89FF611AF;
	Mon, 18 Sep 2023 09:44:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C89FF611AF
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AF3BBC0DDC;
	Mon, 18 Sep 2023 09:44:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A2F5DC0032
 for <bridge@lists.linux-foundation.org>; Wed, 13 Sep 2023 17:58:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7CCCD41924
 for <bridge@lists.linux-foundation.org>; Wed, 13 Sep 2023 17:58:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CCCD41924
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=BqCegcpr
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vkRF0kjRifP1 for <bridge@lists.linux-foundation.org>;
 Wed, 13 Sep 2023 17:58:49 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 90266418E4
 for <bridge@lists.linux-foundation.org>; Wed, 13 Sep 2023 17:58:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90266418E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1694627927;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=pc0YBnnQvigZbTYj35NCXLikktn4/P6vHV3/P7dg5gE=;
 b=BqCegcprotQyrhvRSm5GQ9JtxA5itL+Q8endeJVZevI0fG2nKBt+h9GY9vae6rCm75zcHU
 uzS+lMrVraRyD7caVCry65RLE7c86NQfjGS38ivaoufrqPrr6UMN1kj8G5qavieyl+Hwgw
 noKoIozLgrOZLTnR8R+Q3fhbmRZewvg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-66-mPs51VFUMHuNXnRqFL3sRA-1; Wed, 13 Sep 2023 13:58:41 -0400
X-MC-Unique: mPs51VFUMHuNXnRqFL3sRA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 10E7A811738;
 Wed, 13 Sep 2023 17:58:41 +0000 (UTC)
Received: from renaissance-vector.redhat.com (unknown [10.39.193.129])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AEA1F40C6EA8;
 Wed, 13 Sep 2023 17:58:38 +0000 (UTC)
From: Andrea Claudi <aclaudi@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 13 Sep 2023 19:58:24 +0200
Message-ID: <cover.1694625043.git.aclaudi@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mailman-Approved-At: Mon, 18 Sep 2023 09:44:19 +0000
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, David Ahern <dsahern@gmail.com>,
 Roopa Prabhu <roopa@nvidia.com>
Subject: [Bridge] [PATCH iproute2-next 0/2] configure: add support for color
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

This series add support for the color parameter in iproute2 configure
script. The idea is to make it possible for iproute2 users and packagers
to set a default value for the color option different from the current
one, COLOR_OPT_NEVER, while maintaining the current default behaviour.

Patch 1 add the color option to the configure script. Users can set
three different values, never, auto and always, with the same meanings
they have for the -c / -color ip option. Default value is 'never', which
results in ip, tc and bridge to maintain their current output behaviour
(i.e. colorless output).

Patch 2 makes it possible for ip, tc and bridge to use the configured
value for color as their default color output.

Andrea Claudi (2):
  configure: add the --color option
  treewide: use configured value as the default color output

 Makefile        |  3 ++-
 bridge/bridge.c |  3 ++-
 configure       | 37 +++++++++++++++++++++++++++++++++++++
 ip/ip.c         |  2 +-
 tc/tc.c         |  2 +-
 5 files changed, 43 insertions(+), 4 deletions(-)

-- 
2.41.0

