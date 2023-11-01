Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B437DE6B3
	for <lists.bridge@lfdr.de>; Wed,  1 Nov 2023 21:11:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B8D4704C8;
	Wed,  1 Nov 2023 20:11:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B8D4704C8
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg header.b=yBcGlUHA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2IvAYGIQ0trj; Wed,  1 Nov 2023 20:11:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 26F55704CF;
	Wed,  1 Nov 2023 20:11:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26F55704CF
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CB6C3C008D;
	Wed,  1 Nov 2023 20:11:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7B52AC0032
 for <bridge@lists.linux-foundation.org>; Wed,  1 Nov 2023 20:11:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3FB2C84CC9
 for <bridge@lists.linux-foundation.org>; Wed,  1 Nov 2023 20:11:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FB2C84CC9
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=yBcGlUHA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pvt482jsJr3w for <bridge@lists.linux-foundation.org>;
 Wed,  1 Nov 2023 20:10:59 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3CC188494D
 for <bridge@lists.linux-foundation.org>; Wed,  1 Nov 2023 20:10:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CC188494D
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6797660244;
 Wed,  1 Nov 2023 20:10:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3081C433C7;
 Wed,  1 Nov 2023 20:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1698869458;
 bh=qWq60dsjYKVO5hHhs5WPNbgi5lyED87df/YUqtTpgb8=;
 h=Date:From:To:Subject:From;
 b=yBcGlUHAIH4+DORbqzS0Ces0g4jwdZo1rmaYs/M0DGlcASToPqKqMsHfugv4Yjdnq
 bVGBpN+/DztApGFk+Ne4Jq45zZyq7AhAXFpEyuwLLqvf4XSf7KdsjK+5VXw9aYeZJz
 74DAmfNNgWgU7atxpZtp7zJUThscdqf0MtX1D64w=
Date: Wed, 1 Nov 2023 16:10:56 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: bridge@lists.linux-foundation.org
Message-ID: <20231101-enormous-salmon-of-coffee-7ebb9a@nitro>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [Bridge] PSA: the bridge list will be moving to lists.linux.dev
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

Hello, all:

The mailman-2 system running on lists.linux-foundation.org is being
decommissioned, so all lists currently hosted there will be found new homes.
*On November 7*, The bridge list will be migrated to live on lists.linux.dev,
but the impact of this move should be minor:

1. The new canonical list address will be bridge@lists.linux.dev.

2. *The old address will continue to work* for the foreseeable future, so any
   existing conversations can continue and any new messages sent to the old
   list address will be properly delivered to all subscribers.

3. All members will be automatically subscribed to the new list, so no action
   is required on anyone's part to keep receiving list mail.

4. The list will be archived on https://lore.kernel.org/bridge/ with all prior
   archives automatically imported.

5. The List-ID header will change, regardless to which address the message is
   sent:

   before: List-Id: <bridge.lists.linux-foundation.org>
    after: List-Id: <bridge.lists.linux.dev>

   You will need to update your filtering rules if you filter based on the
   contents of that header (on or after November 7).

6. The mailman footer will no longer be added to message bodies and the
   subject will no longer be modified to insert [bridge] (because this
   violates DMARC).

7. Subscribing and unsubscribing will be done using the mlmmj supported
   commands, documented at https://subspace.kernel.org/subscribing.html

Please let me know if you have any questions or concerns. Otherwise, I will
follow up on November 7 after the move has been completed.

Best regards,
-K
